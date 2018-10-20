import React, { Component } from 'react';
import BoardgameTile from '../components/BoardgameTile'

class BoardgameContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      boardgameList: []
    }
  }
  componentDidMount() {
    fetch("/api/v1/boardgames")
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then((response) => response.json())
    .then((data) => {
      this.setState({ boardgameList: data.boardgames })
    })
  }

  render() {
    let gameTiles = this.state.boardgameList.map(game => {
      return(
        <BoardgameTile
          key={game.id}
          id={game.id}
          title={game.title}
          description={game.description}
          rating={game.rating}
        />
      )
    })
    return(
      <div>
        <h1>Here are a bunch Boardgames</h1>
        {gameTiles}

      </div>
    )
  }
}

export default BoardgameContainer;

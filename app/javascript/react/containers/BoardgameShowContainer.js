import React, { Component } from 'react';


class BoardgameShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      boardgameData: {

      }
    }
  }
  componentDidMount() {
    let boardgameId = this.props.params.id
    fetch(`/api/v1/boardgames/${boardgameId}`)
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
      this.setState({ boardgameData: data.boardgame })
    })
  }

  render() {

    return(
      <div>
        <h1>Here a Boardgame</h1>

      </div>
    )
  }
}

export default BoardgameShowContainer;

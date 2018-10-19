import React, { Component } from 'react';
// import BeerTile from '../components/BeerTile'

class BoardgameContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      BoardgameList: []
    }
  }

  render() {

    return(
      <div>
        <h1>Here are a bunch Boardgames</h1>

      </div>
    )
  }
}

export default BoardgameContainer;

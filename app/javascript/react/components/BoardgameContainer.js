
import React, { Component } from 'react';

import Scoreboard from './Scoreboard';
// import BeerTile from '../components/BeerTile'

class BoardgameContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      boardGames: [],
      serchString: ''
    }
    this.handleChange = this.handleChange.bind(this)
    this.handleSearch = this.handleSearch.bind(this)
  }

  handleChange(event) {
    const newSearchString = event.target.value
    this.setState({ searchString: newSearchString })
  }

  handleSearch(event) {
    event.preventDefault()
    console.log(`Form submitted: ${this.state.serchString}`);
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

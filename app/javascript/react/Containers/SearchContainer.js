import React, { Component } from 'react';

class SearchBar extends Component {
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
      <form onSubmit={this.handleSubmit}>
       <label>Search</label>
       <input type='text' name='searchString' value={this.state.searchString} onChange={this.handleChange} />

       <input type='submit' value='Submit' />
     </form>
    )
  }
}

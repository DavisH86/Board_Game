import React, { Component } from 'react';
import { Link } from 'react-router'
import Event from './Event'
// import BeerTile from '../components/BeerTile'

class EventContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user: {},
      name: '',
      description: '',
      location: '',
      organizer: '',
      reviews: []
    };
    this.handleChange = this.handleChange.bind(this)
  }

  handleChange(event) {
    const newSearchString = event.target.value
    this.setState({ searchString: newSearchString })
  }

  componentDidMount() {
    let eventId = this.props.params.id
  fetch(`/api/v1/events/${eventId}`)
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
    this.setState({
      name: data.event.name,
      description: data.event.description,
      location: data.event.location,
      organizer: data.event.organizer})
  })
  .then(
    fetch(`/api/v1/current_user`)
    .then(response => {
      if(response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      if (body !== null) {
        this.setState({user: body})
      }
    })
  )
  .catch(error => console.error(`Error in fetch: ${error.message}`));
}

  render() {

    return(
      <div>
        <h1>Here are an Event</h1>
          <div>
            <Event name={this.state.name}/>
          </div>
      </div>
    )
  }
}

export default EventContainer;

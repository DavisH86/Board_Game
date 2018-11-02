import React, { Component } from 'react';

class Scoreboard extends Component {
  constructor(props) {
    super(props);
    this.state = {
      teamA: 0,
      teamB: 0
    }
    this.handleIncrementA = this.handleIncrementA.bind(this)
  }

  handleIncrementA() {
    const scoreA = this.state.teamA
    const newScore = scoreA + 1
    this.setState({ teamA: newScore })
  }

  render() {

    return(
      <div>
      <h2>We are here</h2>
        <ButtonA onClick={this.handleIncrementA} />

      </div>
    )
  }
}
export default Scoreboard;

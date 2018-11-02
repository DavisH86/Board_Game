import React from 'react';
import EventContainer from './EventContainer';
import Scoreboard from './Scoreboard';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';

 const App = (props) => {
  return (
<div>
    <Router history={browserHistory}>
      <Route path='/events/:id' component={EventContainer} />
      <Route path='/scoreboards' component={Scoreboard} />

    </Router>
</div>
  )
}

export default App

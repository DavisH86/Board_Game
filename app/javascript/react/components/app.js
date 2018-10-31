import React from 'react';
import 'babel-polyfill';
import EventContainer from './EventContainer';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';

 const App = (props) => {
  return (
<div>
  <h1>hit it</h1>

    <Router history={browserHistory}>
      <Route path='/events/:id' component={EventContainer} />

    </Router>
</div>
  )
}

export default App

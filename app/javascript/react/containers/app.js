import React from 'react';
import 'babel-polyfill';
import BoardgameContainer from './BoardgameContainer';
import BoardgameShowContainer from './BoardgameShowContainer';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';

 const App = (props) => {
  return (
<div>
  <h1>hit it</h1>

    <Router history={browserHistory}>
      <Route path='/' component={BoardgameContainer} />
      <Route path='/boardgames/:id' component={BoardgameShowContainer}/>

    </Router>
</div>
  )
}

export default App

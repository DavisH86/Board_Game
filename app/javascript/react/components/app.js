import React from 'react';
import EventContainer from './EventContainer';
import Scoreboard from './Scoreboard';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';

 const App = (props) => {
//   return (
// <div>
//     <Router history={browserHistory}>
//       <Route path='/events/:id' component={EventContainer} />
//       <Route path='/scoreboards' component={Scoreboard} />
//
//     </Router>
// </div>
//document.getElementById("reviewForm").setAttribute("hidden", "true")
  document.getElementById("close").addEventListener("click", function(){
    document.getElementById("reviewForm").setAttribute("hidden", "true")
  })
  function revealForm() {
    document.getElementById("reviewForm").removeAttribute("hidden")
  }
    return(
      <div>
      <button onClick={revealForm}>Add a Review</button>

      </div>
    )
  // )
}

export default App

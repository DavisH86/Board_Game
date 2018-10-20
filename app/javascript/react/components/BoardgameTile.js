import React from 'react';
import { Link } from 'react-router'

const BoardgameTile = props => {
  return(
    <div>
    <h3><Link to={`/boardgames/${props.id}`}>{props.title}</Link></h3>
    <p>{props.description}</p>
    <p>{props.rating}</p>
    </div>
  )
}

export default BoardgameTile

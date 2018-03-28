import React from 'react';
import { Route, Router, Link, Redirect } from 'react-router-dom';
import * as SessionAPIUtil from '../../util/session_api_util';

const Welcome = () => (
  <a href='/users/auth/linkedin'>Log In</a>
);

export default Welcome;


// <div
//   onClick={ SessionAPIUtil.login }
//   >LOGIN WITH LINKEDIN
// </div>

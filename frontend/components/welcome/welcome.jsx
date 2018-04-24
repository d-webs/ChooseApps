import React from 'react';
import { Route, Router, Link, Redirect } from 'react-router-dom';
import { connect } from 'react-redux';

const Welcome = ({ loggedIn, currentUser }) => (
  loggedIn ?
  <h1>Welcome, {currentUser.name}</h1> :
  <a href='/users/auth/linkedin'>Log In</a>
);

const mapStateToProps = ({ session: { currentUser } }) => ({
  currentUser: currentUser,
  loggedIn: Boolean(currentUser),
});

export default connect(mapStateToProps)(Welcome);

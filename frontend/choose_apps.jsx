import ReactDOM from 'react-dom';
import React from 'react';
import App from './components/app/app';

document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  ReactDOM.render(<App />, rootEl);
});

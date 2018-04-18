import ReactDOM from 'react-dom';
import React from 'react';
import Root from './components/Root';

import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  let store;

  let currentUser = localStorage.getItem('currentUser');

  if (currentUser) {
    const preloadedState = {
      session: {
        currentUser: JSON.parse(currentUser),
      },
    };

    store = configureStore(preloadedState);

    currentUser = null;
  } else {
    store = configureStore();
  }

  window.store = store;
  const rootEl = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, rootEl);
});

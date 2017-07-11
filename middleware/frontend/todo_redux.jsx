import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// function addLoggingToDispatch(store) {
//   let newStore = store.dispatch;
//
//   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     newStore(action);
//     console.log(store.getState());
//   };
// }

// const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState());
// };
//
// const applyMiddlewares = (store, ...mids) => {
//   let dispatch = store.dispatch;
//   mids.forEach((mid) => {
//     dispatch = mid(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };


document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  // store.dispatch = applyMiddlewares(store, addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

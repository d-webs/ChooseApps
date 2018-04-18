import * as sessionAPIUtil from '../util/sessionAPIUtil';

export const sessionActions = {
  LOGOUT: 'LOGOUT',
  RECEIVE_LOGOUT_ERRORS: 'RECEIVE_LOGOUT_ERRORS',
};

export const receiveLogoutErrors = errors => ({
  type: RECEIVE_LOGOUT_ERRORS, errors
});

export const receiveLogout = () => ({
  type: sessionActions.LOGOUT
});

export const logout = () => dispatch => (
  sessionAPIUtil.logout().then((loggedOutUser) => (
    dispatch(receiveLogout(loggedOutUser))
  ), errors => (
    dispatch(receiveLogoutErrors(errors.responseJSON))
  ))
);

export const login = () => (
  $.ajax({
    method: 'GET',
    url: '/users/auth/linkedin'
  })
);

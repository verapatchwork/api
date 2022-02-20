module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '3f681b5c6e8d451183fb44ea72ce0c60'),
  },
});

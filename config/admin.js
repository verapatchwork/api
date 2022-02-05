module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '2ce7bb36af2a2fcbe7ada19007d8003e'),
  },
});

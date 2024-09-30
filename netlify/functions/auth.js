const NetlifyAuth = require('netlify-auth-providers');

exports.handler = async (event, context) => {
  const auth = new NetlifyAuth({
    site_id: process.env.SITE_ID
  });

  try {
    const ticket = await auth.authenticate({ 
      provider: "github", 
      scope: "repo",
      client_id: process.env.GITHUB_CLIENT_ID,
      client_secret: process.env.GITHUB_CLIENT_SECRET
    });
    return {
      statusCode: 200,
      body: JSON.stringify(ticket)
    };
  } catch (e) {
    return {
      statusCode: 500,
      body: 'Internal Server Error: ' + e
    };
  }
};
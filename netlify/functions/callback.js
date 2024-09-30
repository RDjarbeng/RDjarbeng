exports.handler = async (event, context) => {
    return {
      statusCode: 200,
      body: 'Auth callback successful. You can close this window.'
    };
  };
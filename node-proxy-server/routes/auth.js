const express = require('express');
const request = require('request');

const BASE_URL = 'https://ci-auth-service.herokuapp.com/api/v1/auth/';
const authRouter = express.Router();

authRouter.post('/signup', (req, res, next) => {
  request({
    url: `${BASE_URL}/signup`,
    method: 'POST',
    json: true,
    body: req.body,
  }, (err, response, body) => {
    // TODO: test this lol
    res.send(response);
  });
});

authRouter.post('/login', (req, res, next) => {
  request({
    url: `${BASE_URL}/login`,
    method: 'POST',
    json: true,
    body: req.body,
  }, (err, response, body) => {
    // TODO: save token to user session storage before sending response to user?
    res.send(response);
  });
});

module.exports = authRouter;

const cors = require('cors');
const cookieParser = require('cookie-parser');
const createError = require('http-errors');
const express = require('express');
const firebase = require('firebase-admin');
const logger = require('morgan');
const path = require('path');
const proxy = require('http-proxy-middleware');
const session = require('express-session');
const FirebaseStore = require('connect-session-firebase')(session);

const authRouter = require('./routes/auth');

const ref = firebase.initializeApp({
  credential: firebase.credential.cert('secrets/firebase-private-key.json'),
  databaseURL: 'https://musicstreamer-d37d5.firebaseio.com',
});

const app = express();

app.use(cors());
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

// Use Firebase for session storage.
express().use(
  session({
    store: new FirebaseStore({
      database: ref.database(),
    }),
    secret: 'keyboard cat',
    resave: true,
    saveUninitialized: true,
  }),
);

// Serve index page.
const router = express.Router();
router.get('/', (req, res, next) => {
  res.redirect('index.html');
});
app.use('/', router);

// Authentication.
app.use('/auth', authRouter);

// Serve static files.
app.use(express.static(path.join(__dirname, 'static')));

// Proxy API requests to the Java server.
// TODO: fix URL / read from env var
const apiProxy = proxy('/', { target: 'http://localhost:8080/api' });
app.use(apiProxy);

// Forward 404s to the error handler.
app.use((req, res, next) => {
  next(createError(404));
});

module.exports = app;

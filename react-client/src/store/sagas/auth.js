import { call, put } from 'redux-saga/effects';
import { toast } from 'react-toastify';
import history from '../../services/history';
import proxy from '../../services/java-server.js';

import { Creators as authActions } from '../ducks/auth';


export function* signIn({ payload }) {
  try {
    const { email, password } = payload;

    const response = yield call(proxy.post, 'auth/login', {
      email,
      password,
    });

    const { token, name } = response.data.body;

    const user = { name, email };

    proxy.defaults.headers.Authorization = `Bearer ${token}`;

    yield put(authActions.signInSuccess(token, user));

    if(response.data.statusCode === 200){
      history.push('/');
    }else{
      toast.error(response.data.body.errors);
    }
  } catch (err) {

    yield put(authActions.signFailure());
  }
}

export function* signUp({ payload }) {
  try {
    const {
      name, email, password, confirm_password,
    } = payload;

    yield call(proxy.post, 'auth/signup', {
      name,
      email,
      password,
      confirm_password,
    });
    toast.success('Account successfully created');

    history.push('/login');
  } catch (err) {
    toast.error('Register failed, check your fields');
    yield put(authActions.signFailure());
  }
}

// Handling token to private requests in redux-persist
export function setToken({ payload }) {
  if (!payload) return;

  const { token } = payload.auth;

  if (token) {
    proxy.defaults.headers.Authorization = `Bearer ${token}`;
  }
}

export function signOut() {
  history.push('/login');
}

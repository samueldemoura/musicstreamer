import { call, put } from 'redux-saga/effects';
// import api from '../../services/json-server';
import proxy from '../../services/java-server';

import { Creators as PlaylistsActions } from '../ducks/playlists';
import { Creators as ErrorActions } from '../ducks/error';

export function* getPlaylists() {
  try {
    const response = yield call(proxy.get, 'albums');

    console.log(response.data);

    yield put(PlaylistsActions.getPlaylistSuccess(response.data.content));
  } catch (error) {
    yield put(ErrorActions.setError('Não foi possível obter as playlists'));
  }
}

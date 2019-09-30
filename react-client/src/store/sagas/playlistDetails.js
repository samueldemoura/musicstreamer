import { call, put } from 'redux-saga/effects';
// import api from '../../services/json-server';
import proxy from '../../services/java-server';

import { Creators as PlaylistDetailsActions } from '../ducks/playlistDetails';
import { Creators as ErrorActions } from '../ducks/error';

export function* getPlaylistDetails(action) {
  try {
    // const response = yield call(api.get, `/playlists/${action.payload.id}?_embed=songs`);
    const response = yield call(proxy.get, 'tracks');

    console.log(response.data);

    yield put(PlaylistDetailsActions.getPlaylistDetailsSuccess(response.data.content));
  } catch (error) {
    yield put(ErrorActions.setError('Não foi possível obter os detalhes da playlist'));
  }
}

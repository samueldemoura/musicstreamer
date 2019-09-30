import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import PropTypes from 'prop-types';

import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { Creators as PlaylistsActions } from '../../store/ducks/playlists';

import { Container, NewPlaylist, Nav } from './styles';

import Loading from '../Loading';

import AddPlaylistIcon from '../../assets/images/add_playlist.svg';

class Sidebar extends Component {
  static propTypes = {
    getPlaylistRequest: PropTypes.func.isRequired,
    playlist: PropTypes.shape({
      data: PropTypes.arrayOf(
        PropTypes.shape({
          id: PropTypes.number,
          title: PropTypes.string,
        }),
      ),
      loading: PropTypes.bool,
    }).isRequired,
  };

  componentDidMount() {
    const { getPlaylistRequest } = this.props;
    getPlaylistRequest();
  }

  render() {
    return (
      <Container>
        <div>
          <Nav main>
            <li>
              <Link to="/">Navegar</Link>
            </li>
            <li>
              <a href="/">Radio</a>
            </li>
          </Nav>

          <Nav>
            <li>
              <span>SUA BIBLIOTECA</span>
            </li>
            <li>
              <a href="/">Seu Daily Mix</a>
            </li>
            <li>
              <a href="/">Tocados recentemente</a>
            </li>
            <li>
              <a href="/">Músicas</a>
            </li>
            <li>
              <a href="/">Álbums</a>
            </li>
            <li>
              <a href="/">Artistas</a>
            </li>
          </Nav>

          <Nav main>
            <li>
              <span>ÁLBUNS</span>
              {this.props.playlists.loading && <Loading />}
            </li>
            {this.props.playlists.data.map(playlist => (
              <li key={playlist.id}>
                <Link to={`/playlists/${playlist.id}`}>{playlist.title}</Link>
              </li>
            ))}
          </Nav>
        </div>
        <NewPlaylist>
          <img src={AddPlaylistIcon} alt="Adicionar playlist" />
          Nova playlist
        </NewPlaylist>
      </Container>
    );
  }
}
const mapStateToProps = state => ({
  playlists: state.playlists,
});
const mapDispatchToProps = dispatch => bindActionCreators(PlaylistsActions, dispatch);

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(Sidebar);

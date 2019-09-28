package br.edu.ufpb.nhrf.musicstreamer.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;

/**
 * = AlbumRepositoryImpl
 *
 * Implementation of AlbumRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = AlbumRepositoryCustom.class)
public class AlbumRepositoryImpl extends QueryDslRepositorySupportExt<Album> implements AlbumRepositoryCustom{

    /**
     * Default constructor
     */
    AlbumRepositoryImpl() {
        super(Album.class);
    }
}
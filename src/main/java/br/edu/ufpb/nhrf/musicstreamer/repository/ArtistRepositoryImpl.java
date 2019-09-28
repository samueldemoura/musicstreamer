package br.edu.ufpb.nhrf.musicstreamer.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;

/**
 * = ArtistRepositoryImpl
 *
 * Implementation of ArtistRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ArtistRepositoryCustom.class)
public class ArtistRepositoryImpl extends QueryDslRepositorySupportExt<Artist> implements ArtistRepositoryCustom{

    /**
     * Default constructor
     */
    ArtistRepositoryImpl() {
        super(Artist.class);
    }
}
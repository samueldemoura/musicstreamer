package br.edu.ufpb.nhrf.musicstreamer.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;

/**
 * = TrackRepositoryImpl
 *
 * Implementation of TrackRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = TrackRepositoryCustom.class)
public class TrackRepositoryImpl extends QueryDslRepositorySupportExt<Track> implements TrackRepositoryCustom{

    /**
     * Default constructor
     */
    TrackRepositoryImpl() {
        super(Track.class);
    }
}
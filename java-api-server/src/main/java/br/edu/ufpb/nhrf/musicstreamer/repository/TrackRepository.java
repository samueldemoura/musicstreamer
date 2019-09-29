package br.edu.ufpb.nhrf.musicstreamer.repository;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = TrackRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Track.class)
public interface TrackRepository extends DetachableJpaRepository<Track, Long>, TrackRepositoryCustom {
}

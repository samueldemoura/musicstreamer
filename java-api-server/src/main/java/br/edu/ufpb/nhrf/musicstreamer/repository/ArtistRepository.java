package br.edu.ufpb.nhrf.musicstreamer.repository;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import br.edu.ufpb.nhrf.musicstreamer.domain.ArtistInfo;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ArtistRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Artist.class, defaultReturnType = ArtistInfo.class)
public interface ArtistRepository extends DetachableJpaRepository<Artist, Long>, ArtistRepositoryCustom {
}

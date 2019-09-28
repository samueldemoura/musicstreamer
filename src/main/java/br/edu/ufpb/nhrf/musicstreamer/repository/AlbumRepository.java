package br.edu.ufpb.nhrf.musicstreamer.repository;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = AlbumRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Album.class)
public interface AlbumRepository extends DetachableJpaRepository<Album, Long>, AlbumRepositoryCustom {
}

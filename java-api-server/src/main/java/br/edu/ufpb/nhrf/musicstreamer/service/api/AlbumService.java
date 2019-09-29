package br.edu.ufpb.nhrf.musicstreamer.service.api;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = AlbumService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Album.class)
public interface AlbumService extends EntityResolver<Album, Long>, ValidatorService<Album> {
}

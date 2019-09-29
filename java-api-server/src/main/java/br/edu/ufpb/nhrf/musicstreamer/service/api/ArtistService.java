package br.edu.ufpb.nhrf.musicstreamer.service.api;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ArtistService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Artist.class)
public interface ArtistService extends EntityResolver<Artist, Long>, ValidatorService<Artist> {
}

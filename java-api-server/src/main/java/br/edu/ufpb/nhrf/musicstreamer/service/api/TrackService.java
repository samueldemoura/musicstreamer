package br.edu.ufpb.nhrf.musicstreamer.service.api;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = TrackService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Track.class)
public interface TrackService extends EntityResolver<Track, Long>, ValidatorService<Track> {
}

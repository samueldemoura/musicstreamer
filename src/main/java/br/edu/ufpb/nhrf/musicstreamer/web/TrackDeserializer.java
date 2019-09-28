package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import br.edu.ufpb.nhrf.musicstreamer.service.api.TrackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TrackDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Track.class)
public class TrackDeserializer extends JsonObjectDeserializer<Track> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TrackService trackService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param trackService
     * @param conversionService
     */
    @Autowired
    public TrackDeserializer(@Lazy TrackService trackService, ConversionService conversionService) {
        this.trackService = trackService;
        this.conversionService = conversionService;
    }
}

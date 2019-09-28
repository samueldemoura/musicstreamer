package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import br.edu.ufpb.nhrf.musicstreamer.service.api.ArtistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ArtistDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Artist.class)
public class ArtistDeserializer extends JsonObjectDeserializer<Artist> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ArtistService artistService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param artistService
     * @param conversionService
     */
    @Autowired
    public ArtistDeserializer(@Lazy ArtistService artistService, ConversionService conversionService) {
        this.artistService = artistService;
        this.conversionService = conversionService;
    }
}

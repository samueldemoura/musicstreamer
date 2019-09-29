package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import br.edu.ufpb.nhrf.musicstreamer.service.api.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = AlbumDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Album.class)
public class AlbumDeserializer extends JsonObjectDeserializer<Album> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private AlbumService albumService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param albumService
     * @param conversionService
     */
    @Autowired
    public AlbumDeserializer(@Lazy AlbumService albumService, ConversionService conversionService) {
        this.albumService = albumService;
        this.conversionService = conversionService;
    }
}

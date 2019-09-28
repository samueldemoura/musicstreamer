package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ArtistsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Artist.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ArtistsItemJsonController {
}

package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = AlbumsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Album.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class AlbumsItemJsonController {
}

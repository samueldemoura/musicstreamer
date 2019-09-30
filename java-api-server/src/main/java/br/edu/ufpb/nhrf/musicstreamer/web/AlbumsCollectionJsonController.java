package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.web.bind.annotation.CrossOrigin;
/**
 * = AlbumsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
 
@CrossOrigin(origins = "http://localhost:3001")
@RooController(entity = Album.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class AlbumsCollectionJsonController {
}

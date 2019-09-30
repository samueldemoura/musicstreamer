package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.web.bind.annotation.CrossOrigin;

/**
 * = ArtistsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@CrossOrigin(origins = "http://localhost:3001")
@RooController(entity = Artist.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class ArtistsCollectionJsonController {
}

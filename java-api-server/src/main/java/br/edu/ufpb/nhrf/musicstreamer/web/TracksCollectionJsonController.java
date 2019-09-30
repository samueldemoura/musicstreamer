package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.web.bind.annotation.CrossOrigin;

/**
 * = TracksCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@CrossOrigin(origins = "http://localhost:3001")
@RooController(entity = Track.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class TracksCollectionJsonController {
}

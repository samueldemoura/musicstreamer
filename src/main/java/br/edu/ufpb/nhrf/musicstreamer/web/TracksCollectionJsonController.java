package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = TracksCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Track.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class TracksCollectionJsonController {
}

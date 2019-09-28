package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TracksItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Track.class, type = ControllerType.ITEM)
@RooThymeleaf
public class TracksItemThymeleafController implements ConcurrencyManager<Track> {
}

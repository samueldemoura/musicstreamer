package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ArtistsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Artist.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ArtistsItemThymeleafController implements ConcurrencyManager<Artist> {
}

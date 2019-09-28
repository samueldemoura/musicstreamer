package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = AlbumsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Album.class, type = ControllerType.ITEM)
@RooThymeleaf
public class AlbumsItemThymeleafController implements ConcurrencyManager<Album> {
}

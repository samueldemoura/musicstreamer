package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.UserAccount;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = UserAccountsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = UserAccount.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class UserAccountsItemJsonController {
}

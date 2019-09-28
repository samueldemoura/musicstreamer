package br.edu.ufpb.nhrf.musicstreamer.service.api;
import br.edu.ufpb.nhrf.musicstreamer.domain.UserAccount;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = UserAccountService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = UserAccount.class)
public interface UserAccountService extends EntityResolver<UserAccount, Long>, ValidatorService<UserAccount> {
}

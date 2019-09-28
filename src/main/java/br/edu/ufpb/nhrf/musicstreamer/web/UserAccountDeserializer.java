package br.edu.ufpb.nhrf.musicstreamer.web;
import br.edu.ufpb.nhrf.musicstreamer.domain.UserAccount;
import br.edu.ufpb.nhrf.musicstreamer.service.api.UserAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = UserAccountDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = UserAccount.class)
public class UserAccountDeserializer extends JsonObjectDeserializer<UserAccount> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private UserAccountService userAccountService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param userAccountService
     * @param conversionService
     */
    @Autowired
    public UserAccountDeserializer(@Lazy UserAccountService userAccountService, ConversionService conversionService) {
        this.userAccountService = userAccountService;
        this.conversionService = conversionService;
    }
}

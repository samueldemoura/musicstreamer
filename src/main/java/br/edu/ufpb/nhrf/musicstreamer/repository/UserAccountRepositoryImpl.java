package br.edu.ufpb.nhrf.musicstreamer.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.edu.ufpb.nhrf.musicstreamer.domain.UserAccount;

/**
 * = UserAccountRepositoryImpl
 *
 * Implementation of UserAccountRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = UserAccountRepositoryCustom.class)
public class UserAccountRepositoryImpl extends QueryDslRepositorySupportExt<UserAccount> implements UserAccountRepositoryCustom{

    /**
     * Default constructor
     */
    UserAccountRepositoryImpl() {
        super(UserAccount.class);
    }
}
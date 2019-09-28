package br.edu.ufpb.nhrf.musicstreamer.repository;
import br.edu.ufpb.nhrf.musicstreamer.domain.UserAccount;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = UserAccountRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = UserAccount.class)
public interface UserAccountRepository extends DetachableJpaRepository<UserAccount, Long>, UserAccountRepositoryCustom {
}

package br.com.trier.springmatutino.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.trier.springmatutino.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

	Optional<User> findByNameLike(String name);
	Optional<User> findByEmail(String email);
	List<User> findByEmailAndPassword(String email,String password);
	
	
}
package com.skilldistillery.guitarplayers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.guitarplayers.entities.Player;

@Service
@Transactional
public class GuitarPlayerDAOImpl implements GuitarPlayerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Player> findAll() {
		String jpql = "SELECT p FROM Player p";
		return em.createQuery(jpql, Player.class).getResultList();
	}

	@Override
	public Player findById(int playerId) {
		return em.find(Player.class, playerId);
	}

	@Override
	public Player createPlayer(Player player) {

		em.persist(player);

		return player;
	}

	@Override
	public Player updatePlayer(int playerId, Player playerUpdated) {
		Player player = em.find(Player.class, playerId);
		player.setFirstName(playerUpdated.getFirstName());
		player.setLastName(playerUpdated.getLastName());
		player.setGuitarBrand(playerUpdated.getGuitarBrand());
		player.setBirthPlace(playerUpdated.getBirthPlace());
		player.setBirthCountry(playerUpdated.getBirthCountry());
		player.setBirthDay(playerUpdated.getBirthDay());
		player.setDeceasedDay(playerUpdated.getDeceasedDay());
		player.setRemarks(playerUpdated.getRemarks());
		
		return player;
	}

	@Override
	public boolean deletePlayer(int playerId) {
		Player player = em.find(Player.class, playerId);
		em.remove(player);
		
		if(em.contains(player)) {
			return false;
		}
		return true;
	}

}

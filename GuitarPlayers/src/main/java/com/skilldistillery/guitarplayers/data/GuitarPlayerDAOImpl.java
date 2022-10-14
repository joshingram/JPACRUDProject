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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Player updatePlayer(int playerId, Player player) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deletePlayer(int playerId) {
		// TODO Auto-generated method stub
		return false;
	}

}

package com.skilldistillery.guitarplayers.data;

import java.util.List;

import com.skilldistillery.guitarplayers.entities.Player;

public interface GuitarPlayerDAO {
	
	List <Player> findAll();
	
	Player findById(int playerId);
	
	Player createPlayer(Player player);
	
	Player updatePlayer(int playerId, Player player);
	
	boolean deletePlayer(int playerId);
	
	

}

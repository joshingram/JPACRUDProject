package com.skilldistillery.guitarplayers.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="first_name")
	private String firstName;

	
	//Methods:
	
	public Player() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public Player(int id, String firstName) {
		super();
		this.id = id;
		this.firstName = firstName;
	}

	@Override
	public String toString() {
		return "Player [id=" + id + ", firstName=" + firstName + "]";
	}

}

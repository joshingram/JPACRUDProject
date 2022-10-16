package com.skilldistillery.guitarplayers.entities;

import java.time.LocalDate;
import java.util.Date;

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
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="guitar_brand")
	private String guitarBrand;
	
	@Column(name="birth_place")
	private String birthPlace;
	
	@Column(name="birth_country")
	private String birthCountry;
	
	@Column(name="birth_day")
	private LocalDate birthDay;
	
	@Column(name="deceased_day")
	private LocalDate deceasedDay;
	
	private String remarks;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="video_url")
	private String videoUrl;
	
	
	//Methods:
	public Player() {
		
	}

	public Player(String firstName, String lastName, String guitarBrand, String birthPlace, String birthCountry,
			LocalDate birthDay, LocalDate deceasedDay, String remarks, String imageUrl) {  
		this.firstName = firstName;
		this.lastName = lastName;
		this.guitarBrand = guitarBrand;
		this.birthPlace = birthPlace;
		this.birthCountry = birthCountry;
		this.birthDay = birthDay;
		this.deceasedDay = deceasedDay;
		this.remarks = remarks;
		this.imageUrl = imageUrl;
	}
	
	//no image url
	public Player(int id, String firstName, String lastName, String guitarBrand, String birthPlace, String birthCountry,
			LocalDate birthDay, LocalDate deceasedDay, String remarks) { 
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.guitarBrand = guitarBrand;
		this.birthPlace = birthPlace;
		this.birthCountry = birthCountry;
		this.birthDay = birthDay;
		this.deceasedDay = deceasedDay;
		this.remarks = remarks;
		
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

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGuitarBrand() {
		return guitarBrand;
	}

	public void setGuitarBrand(String guitarBrand) {
		this.guitarBrand = guitarBrand;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getBirthCountry() {
		return birthCountry;
	}

	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}

	public LocalDate getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(LocalDate birthDay) {
		this.birthDay = birthDay;
	}

	public LocalDate getDeceasedDay() {
		return deceasedDay;
	}

	public void setDeceasedDay(LocalDate deceasedDay) {
		this.deceasedDay = deceasedDay;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	@Override
	public String toString() {
		return "Player [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", guitarBrand="
				+ guitarBrand + ", birthPlace=" + birthPlace + ", birthCountry=" + birthCountry + ", birthDay="
				+ birthDay + ", deceasedDay=" + deceasedDay + ", remarks=" + remarks + ", imageUrl=" + imageUrl + "]";
	}

}

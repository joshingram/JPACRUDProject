package com.skilldistillery.guitarplayers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.guitarplayers.data.GuitarPlayerDAO;

@Controller
public class GuitarPlayerController {
	
	@Autowired
	private GuitarPlayerDAO playerDAO;
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("guitarPlayers", playerDAO.findAll());
		return "index";
	}
	

}

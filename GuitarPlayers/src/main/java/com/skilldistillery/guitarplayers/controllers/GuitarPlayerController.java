package com.skilldistillery.guitarplayers.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.guitarplayers.data.GuitarPlayerDAO;
import com.skilldistillery.guitarplayers.entities.Player;

@Controller
public class GuitarPlayerController {

	@Autowired
	private GuitarPlayerDAO playerDAO;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("guitarPlayers", playerDAO.findAll());
		return "index";
	}

	@RequestMapping(path = "showPlayer.do")
	public String showPlayer(Integer pid, Model model) {
		model.addAttribute("player", playerDAO.findById(pid));
		return "showPlayer";
	}

	@RequestMapping(path = "addPlayer.do", method = RequestMethod.POST)
	public ModelAndView addPlayer(String firstName, String lastName, String guitarBrand, String birthPlace,
			String birthCountry, String remarks, LocalDate birthDay, LocalDate deceasedDay, RedirectAttributes redir) { //
		ModelAndView mv = new ModelAndView();
		Player player = new Player(firstName, lastName, guitarBrand, birthPlace, birthCountry, birthDay, deceasedDay,
				remarks);
		System.out.println(player);
		Player newPlayer = playerDAO.createPlayer(player);

		boolean playerAdded = false;
		if (newPlayer != null) {
			playerAdded = true;
		}

		redir.addFlashAttribute("player", player);
		redir.addFlashAttribute("playerAdded", playerAdded);
		mv.setViewName("redirect:playerAdded.do");
		return mv;
	}

	@RequestMapping(path = "playerAdded.do", method = RequestMethod.GET)
	public ModelAndView playerAdded(Player player, boolean playerAdded) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("showPlayer");

		return mv;
	}

	@RequestMapping(path = "deletePlayer.do", method = RequestMethod.GET)
	public ModelAndView removePlayer(Integer pid) {
		boolean playerRemoved = playerDAO.deletePlayer(pid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("playerRemoved", playerRemoved);
		mv.setViewName("playerRemoved");
		return mv;
	}

	@RequestMapping(path = "updatePlayer.do")
	public String updatePlayer(Integer pid, Model model) {
		Player player = playerDAO.findById(pid);
		model.addAttribute("player", player);
		return "updatePlayer";
	}

	@RequestMapping(path = "updatePlayerForm.do", method = RequestMethod.POST)

	public ModelAndView updatePlayer(Integer pid, String firstName, String lastName, String guitarBrand,
			String birthPlace, String birthCountry, LocalDate birthDay, LocalDate deceasedDay, String remarks,
			RedirectAttributes redir) {

		Player player = new Player(pid, firstName, lastName, guitarBrand, birthPlace, birthCountry, birthDay,
				deceasedDay, remarks);

		Player updatedPlayer = playerDAO.updatePlayer(pid, player);
		ModelAndView mv = new ModelAndView();

		boolean playerUpdated = false;
		if (updatedPlayer != null) {
			playerUpdated = true;
		}

		redir.addFlashAttribute("player", updatedPlayer);
		redir.addFlashAttribute("playerUpdated", playerUpdated);
		mv.setViewName("redirect:playerUpdated.do");
		return mv;
	}

	@RequestMapping(path = "playerUpdated.do", method = RequestMethod.GET)
	public ModelAndView playerUpdated(Player player, boolean playerUpdated) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("showPlayer");
		return mv;
	}
}

package com.skilldistillery.film.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;

@Controller
public class FilmController {

    @Autowired
    private FilmDAO filmDAO;

    @RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
    public String goToHome() {
        return "WEB-INF/home.jsp";
    }

    @RequestMapping(path = "GetFilmData.do", method = RequestMethod.GET, params = "filmID")
    public ModelAndView findFilmByID(@RequestParam("filmID") int filmID) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("WEB-INF/GetFilmByID.jsp");
        mv.addObject("film", filmDAO.findFilmById(filmID));
        return mv;
    }

    @RequestMapping(path = "GetKeywordData.do", method = RequestMethod.GET, params = "filmKeyword")
    public ModelAndView searchByKeyword (@RequestParam("filmKeyword") String filmKeyword) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("WEB-INF/GetFilmByKeyword.jsp");
        mv.addObject("film", filmDAO.searchByKeyword(filmKeyword));
        return mv;
    }
    @RequestMapping(path = "ListAllFilms.do", method = RequestMethod.GET)
	public ModelAndView listAllFilms() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/ListAllFilms.jsp");
		mv.addObject("film", filmDAO.listAllFilms());
		return mv;
	}
}

package jp.co.rakus.pizzaProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.pizzaProject.sevice.TopService;

@Controller
@RequestMapping
public class TopController {
	@Autowired
	private TopService topService;
	
	/**
	 * トップページを表示.
	 * @param model : リクエストスコープ
	 * @return Top.jsp
	 */
	@RequestMapping("")
	public String showTop(Model model) {
		model.addAttribute("itemList", topService.findAll());
		return "Top";
	}
}

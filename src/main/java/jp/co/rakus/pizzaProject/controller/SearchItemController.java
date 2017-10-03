package jp.co.rakus.pizzaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.pizzaProject.domain.Item;
import jp.co.rakus.pizzaProject.sevice.TopService;

/**
 * 商品検索を行うコントローラ
 * 
 * @author yahiro
 *
 */
@Controller
@RequestMapping
public class SearchItemController {

	@Autowired
	private TopService topService;

	/**
	 * 曖昧ワード検索
	 * @param keyword 入力された文字列
	 * @return 検索画面
	 */
	@RequestMapping("/searchItem")
	public String searchItem(String keyword, Model model) {
		List<Item> itemList = topService.findByKeyword(keyword);
		if (itemList.isEmpty()) {
			model.addAttribute("error", "該当する商品がありませんでした。");
		}
		model.addAttribute("itemList", itemList);
		return "itemList";
	}
}

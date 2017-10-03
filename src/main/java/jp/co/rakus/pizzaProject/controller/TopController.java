package jp.co.rakus.pizzaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.pizzaProject.domain.Item;
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
	
	/**
	 * 曖昧ワード検索
	 * @param keyword 入力された文字列
	 * @return 検索画面
	 */
	@RequestMapping("/searchItem")
	public String searchItem(String keyword, Model model) {
		List<Item> itemList = topService.findByKeyword(keyword);
		// 空欄のまま検索ボタンを押した場合
		if (keyword.equals("")) {
			model.addAttribute("error", "検索キーワードを入力してください。");
		}
		
		// 検索結果が０件だった場合
		else if (itemList.isEmpty()) {
			model.addAttribute("error", "該当する商品がありませんでした。");
			return showTop(model);
		}		
		// 検索がヒットした場合
		model.addAttribute("itemList", itemList);
		return "Top";
	}
}

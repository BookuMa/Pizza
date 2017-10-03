package jp.co.rakus.pizzaProject.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.pizzaProject.domain.Item;

/**
 * 商品検索を行うコントローラ
 * @author yahiro
 *
 */
@Controller
@RequestMapping
public class SearchItemController {

	
	
	/**
	 * @param keyword　入力された文字
	 * @return　検索結果
	 */
	@RequestMapping("/searchItem")
	public List<Item> serchItem(String keyword, Model model){
		System.out.println(keyword);
		
		return null;
	}

}

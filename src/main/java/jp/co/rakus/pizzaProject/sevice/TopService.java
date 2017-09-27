package jp.co.rakus.pizzaProject.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.rakus.pizzaProject.domain.Item;
import jp.co.rakus.pizzaProject.repository.ItemRepository;

@Service
public class TopService {
	@Autowired
	private ItemRepository itemRepository;
	
	/**商品をMサイズ順で全件取得.
	 * @return 商品データ全件
	 */
	public List<Item> findAll() {
		return itemRepository.findAll();
	}
}

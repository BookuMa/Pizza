package jp.co.rakus.pizzaProject.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import jp.co.rakus.pizzaProject.domain.Item;

@Repository
public class ItemRepository {
	@Autowired
	private NamedParameterJdbcTemplate template;
	
	/**
	 * item用のRowMapper
	 */
	private static final RowMapper<Item> itemRowMapper = (rs, i) -> {
		Item item = new Item();
		item.setId(rs.getInt("id"));
		item.setName(rs.getString("name"));
		item.setDescription(rs.getString("description"));
		item.setPriceM(rs.getInt("price_m"));
		item.setPriceL(rs.getInt("price_l"));
		item.setImagePath(rs.getString("image_path"));
		item.setDeleted(rs.getBoolean("deleted"));
		return item;
	};
	
	/**
	 * 商品を全件Mサイズ価格順で取得.
	 * @return 商品データ全件
	 */
	public List<Item> findAll() {
		String sql = "select id, name, description, price_m, price_l, image_path, deleted "
				+ "from items order by price_m";
		return template.query(sql, itemRowMapper);
	}
	
	/**
	 * 曖昧ワード検索.
	 * @param keyword　入力された文字列
	 * @return　検索ヒット商品
	 */
	public List<Item> findByKeyword(String keyword){
		String sql = "SELECT id, name, description, price_m, price_l, image_path, deleted "
		           + "FROM items where name like :keyword order by price_m";
		SqlParameterSource param = new MapSqlParameterSource().addValue("keyword", '%' + keyword + '%');
		return template.query(sql, param, itemRowMapper);
	}
}

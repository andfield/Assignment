package com.demo.models;

import java.util.ArrayList;
import java.util.List;

import com.demo.entities.Product;

public class DataAccess {

	static List<Product> list;
	static {
		list = new ArrayList<Product>();
		list.add(new Product(1,"Rune Scimitar", "https://oldschool.runescape.wiki/images/2/25/Rune_scimitar_detail.png?73c56", 30000));
		list.add(new Product(2, "Dragon Scimitar", "https://oldschool.runescape.wiki/images/9/97/Dragon_scimitar_detail.png?7e8a9", 100000));
		list.add(new Product(3, "Rune Kiteshield", "https://oldschool.runescape.wiki/images/thumb/4/43/Rune_kiteshield_%28g%29_detail.png/800px-Rune_kiteshield_%28g%29_detail.png?ed0a0", 30000));
		list.add(new Product(4, "Dragon Kiteshield", "https://oldschool.runescape.wiki/images/thumb/6/6a/Dragon_kiteshield_%28g%29_detail.png/800px-Dragon_kiteshield_%28g%29_detail.png?fdc57", 1500000));
	}
	
	public List<Product> findAll() {
		return list;
	}

	public static Product findById(int id) {
		for(Product p : list) {
			if(p.getId() == id)
				return p;
		}
		return null;
	}
}

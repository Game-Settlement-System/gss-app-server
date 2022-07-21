package com.gss.web.common.dao;

import java.util.List;
import java.util.Map;

import com.gss.web.api.dto.ItemDto;
import com.gss.web.common.domain.Item;

public interface ItemDAO {

	public  Integer insertItem(Item item);
		
	public  List<Item> list();
		
	public  List<Item> selectAllItem();
		
	public  int selectByItem(Map map);
		
	public  Item deleteByItemName(String itemName);
		
	public List<ItemDto> selectSearchItemName(String itemName);
	
	public List<ItemDto> selectSearchClassification(String classification);
}

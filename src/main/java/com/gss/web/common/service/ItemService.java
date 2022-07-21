package com.gss.web.common.service;

import java.util.List;
import java.util.Map;

import com.gss.web.api.dto.ItemDto;
import com.gss.web.common.domain.Item;

public interface ItemService {
	public List<Item> list();

	public List<Item> selectAllItem();

	public Integer insertItem(Item item);

	public int selectByItem(Map map);

	public Item deleteByItemName(String itemName);

	public String itemExistence(Item item);

	public List<ItemDto> selectSearchItemName(String itemName);

	public List<ItemDto> selectSearchClassification(String classification);
}

package com.gss.web.common.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Service;

import com.gss.web.common.dao.ItemDAO;
import com.gss.web.common.domain.Item;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ItemServiceImpl implements ItemService{
	@Autowired
	private final ItemDAO itemDAO;
	
	@Autowired
	private ReloadableResourceBundleMessageSource res;
	
	@Override
	public List<Item> list() {
		return itemDAO.list();
	}
	
	@Override
	public Integer insertItem(Item item) {
		return itemDAO.insertItem(item);
	}
	
	@Override
	public List<Item> selectAllItem() {
		return itemDAO.selectAllItem();
	}

	@Override
	public int selectByItem(Map map) {
		return itemDAO.selectByItem(map);
	}
	
	@Override
	public String itemExistence(Item item) {
		String urlPath="";
		Integer itemExistenceNum;
		Map<String, String> map= new HashMap<String, String>();
		
		map.put("itemName", item.getItemName());
		map.put("classification", item.getClassification());
		itemExistenceNum=selectByItem(map);
		if(itemExistenceNum.equals(0)) {
			insertItem(item);
			urlPath="redirect:/admin/item";
		}else {
			urlPath="/admin/boss/insertItem";
		}
		
		return urlPath;
	}
	
	@Override
	public List<Item> selectSearchItemName(String itemName){
		return itemDAO.selectSearchItemName(itemName);
	}
	
	@Override
	public List<Item> selectSearchClassification(String classification){
		return itemDAO.selectSearchClassification(classification);
	}
	
	@Override
	public Item selectByItemNameAndClassification(Map map) {
		return itemDAO.selectByItemNameAndClassification(map);
	}
	
	@Override
	public int deleteByItemName(Map map) {
		return itemDAO.deleteByItemName(map);
	}
	
	@Override
	public List<Item> selectAllItemPaging(Integer page) {
		return itemDAO.selectAllItemPaging(page);
	}
	
	@Override
	public int selectItemCount() {
		int total = itemDAO.selectItemCount();
		int lastBlockNum=-1;
		
		if( total % 10 == 0 ) {
			lastBlockNum = (int)Math.floor(total/10);
        }
        else {
        	lastBlockNum = (int)Math.floor(total/10) + 1;
        }
		
		return lastBlockNum;
	}
	
	@Override
	public List<Item> selectSearchItemNamePaging(Item item) {
		return itemDAO.selectSearchItemNamePaging(item);
	}
	
	@Override
	public List<Item> selectSearchClassificationPaging(Item item) {
		return itemDAO.selectSearchClassificationPaging(item);
	}
}

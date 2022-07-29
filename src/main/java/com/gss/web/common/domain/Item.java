package com.gss.web.common.domain;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Item {
	private int itemNum;	
	private String itemName;	
	private String classification;	
	private String itemImagepath;	
	
	private String type;
	private String keyword;
	
	private Integer page;
	
	public Item(String itemName,String itemImagepath,String classification) {
		this.itemName=itemName;
		this.itemImagepath=itemImagepath;
		this.classification=classification;
	}
	
	public Item(int itemNum, String itemName,String itemImagepath,String classification) {
		this.itemNum=itemNum;
		this.itemName=itemName;
		this.itemImagepath=itemImagepath;
		this.classification=classification;
	}
	
	public Item(String keyword, Integer page) {
		this.keyword = keyword;
		this.page = page;
	}
}

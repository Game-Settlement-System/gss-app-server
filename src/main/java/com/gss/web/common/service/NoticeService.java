package com.gss.web.common.service;

import java.util.List;

import com.gss.web.api.dto.NoticeDto;

// 공지사항 페이지 서비스
public interface NoticeService {
	// 공지사항 목록을 가져온다
	public List<NoticeDto> getNoticeList(String page);
	
	// 공지사항 내용을 가져온다
	public String getNoticeContents(String url);
}

package com.gss.web.common.service;

import java.util.List;

import com.gss.web.common.domain.Notice;

// �������� ������ ����
public interface NoticeService {
	// �������� ����� �����´�
	public List<Notice> getNoticeList(String page);
	
	// �������� ������ �����´�
	public String getNoticeContents(String url);
}

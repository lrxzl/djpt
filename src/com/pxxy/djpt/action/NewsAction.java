package com.pxxy.djpt.action;

import java.util.List;

import cn.pxxy.djpt.util.Conf;

import com.pxxy.djpt.bean.News;

public class NewsAction extends MyActionSupport {
	private final int len = Conf.list_count_perload;
	
	News news;
	List<News> newsList;
	
	private int from_id;
	public void setPage(int page) {
		from_id = (page-1)*10;
	}
	
	public void setNews(News news) {
		System.out.println(news + "<<");
		this.news = news;
	}
	public News getNews() {
		return news;
	}
	public List<News> getNewsList() {
		return newsList;
	}
	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
	
	public String loadNewsList() {
		newsList = service.loadNewsList(from_id, len);
		request.setAttribute("newsList", newsList);
		return "newsList";
	}
	
	public String loadNewsContent() {
		news = service.loadNewsById(news.getNews_id());
		return "newsContent";
	}
	
	public String loadEditPage() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_news_edit))
			return "denied";
		news = service.loadNewsById(news.getNews_id());
		return "newsEdit";
	}
	
	public String deleteNews() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_news_edit))
			return "denied";
		service.delNewsById(news.getNews_id());
		return loadNewsList();
	}
	
	public String updateNews() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_news_edit))
			return "denied";
		service.updateNews(news);
		return loadNewsList();
	}
	
	public String addNews() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_news_edit))
			return "denied";
		service.addNews(news);
		return loadNewsList();
	}
	
}

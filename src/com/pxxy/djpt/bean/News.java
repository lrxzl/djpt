package com.pxxy.djpt.bean;

public class News {
	private int news_id;//新闻的ID
	private String title;//新闻的标题
	private String content;//新闻的内容
	private String type;//新闻的类型
	private String source;//来源
	private String time;//发布时间
	
	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "News [id=" + news_id + ", title=" + title + ", content=" + content
				+ ", type=" + type + ", source=" + source + ", time=" + time
				+ "]";
	}
	
	
}

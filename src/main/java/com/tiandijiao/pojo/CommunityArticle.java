package com.tiandijiao.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.tiandijiao.common.dao.domain.Identifiable;
import com.tiandijiao.model.BaseModel;


/**
 * 新闻 实体类
 * @author markcat
 *
 */
public class CommunityArticle extends BaseModel implements Identifiable {
	//
	private String id;
	//
	private String classId;
	//
	private String title;
	//
	private String content;
	//
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	//
	private String source;
	//
	private String Status;
	//
	private int sortNum;
	//
	private String listImage;
	//
	private String shortInfo;
	//
	private String userId;
	//
	private int readTimes;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
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
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public int getSortNum() {
		return sortNum;
	}
	public void setSortNum(int sortNum) {
		this.sortNum = sortNum;
	}
	public String getListImage() {
		return listImage;
	}
	public void setListImage(String listImage) {
		this.listImage = listImage;
	}
	public String getShortInfo() {
		return shortInfo;
	}
	public void setShortInfo(String shortInfo) {
		this.shortInfo = shortInfo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getReadTimes() {
		return readTimes;
	}
	public void setReadTimes(int readTimes) {
		this.readTimes = readTimes;
	}
	
	public String toString(){
		return ""
		+ "; id=" + this.id
		+ "; classId=" + this.classId
		+ "; title=" + this.title
		+ "; content =" + this.content
		+ "";
	}
	
	
	
}

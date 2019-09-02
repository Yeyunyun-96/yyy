package com.dzx.express.entity;

import java.util.Date;

public class Notice {
    private Integer noticeid;

    private String title;

    private String details;

    private Date time;

    public Integer getNoticeid() {
        return noticeid;
    }

    public void setNoticeid(Integer noticeid) {
        this.noticeid = noticeid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details == null ? null : details.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

	@Override
	public String toString() {
		return "Notice [noticeid=" + noticeid + ", title=" + title + ", details=" + details + ", time=" + time + "]";
	}
    
    
}
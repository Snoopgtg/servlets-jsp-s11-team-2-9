package com.softserve.itacademy.model;

public class ErrModel {
    private String title;
    private String message;
    private String url;

    public ErrModel(String title, String message, String url) {
        this.title = title;
        this.message = message;
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

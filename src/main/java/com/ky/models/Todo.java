package com.ky.models;

public class Todo {
    private int id;
    private String items;
    private boolean status;

    public Todo() {
    }

    public Todo(String items, boolean status) {
        this.items = items;
        this.status = status;
    }

    public Todo(int id, String items, boolean status) {
        this.id = id;
        this.items = items;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}

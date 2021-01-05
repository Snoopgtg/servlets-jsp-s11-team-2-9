package com.softserve.itacademy.model;

public enum Priority {
    LOW("Low"), MEDIUM("Medium"), HIGH("High");
    public final String priorityValue;

    Priority(String value) {
        this.priorityValue = value;
    }
}
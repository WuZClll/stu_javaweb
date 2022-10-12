package com.Dao;

import com.pojo.Book;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class BookDB {
    private static Map<String, Book> books = new LinkedHashMap<>();

    static {
        books.put("1", new Book(1, "Java Web 开发", 20));
        books.put("2", new Book(2, "Java 开发", 40));
        books.put("3", new Book(3, "数据库基础", 40.5));
        books.put("4", new Book(4, "大学英语", 60));
    }
    public static Collection<Book> getAll() {
        return books.values();
    }
    public static Book getBook(String id) {
        return books.get(id);
    }
}

package com.ky.dao;

import com.ky.dbhelper.ConnectDB;
import com.ky.models.Todo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TodoDAO {
    public static ArrayList<Todo> getAllItems() {
        ArrayList<Todo> todolist = new ArrayList<>();
        try {
            Connection cn = ConnectDB.connect();
            String sql = "SELECT * FROM todolist";
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Todo todo = new Todo(rs.getInt("id"),rs.getString("items"),rs.getBoolean("status"));
                todolist.add(todo);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return todolist;
    }

    public static void addItem(Todo todo) {
        try {
            Connection cn = ConnectDB.connect();
            String sql = "INSERT INTO todolist (items,status) VALUES (?,?)";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1,todo.getItems());
            ps.setBoolean(2,todo.isStatus());
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

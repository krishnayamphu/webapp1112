package com.ky.dbhelper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    public static Connection connect() throws ClassNotFoundException, SQLException {
        String username="root";
        String password="";
        String database="javaweb1112";
        Connection cn=null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/"+database,username,password);
        return cn;
    }
}

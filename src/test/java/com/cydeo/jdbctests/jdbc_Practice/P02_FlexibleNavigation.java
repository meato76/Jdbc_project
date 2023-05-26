package com.cydeo.jdbctests.jdbc_Practice;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {


    String dbUrl ="jdbc:oracle:thin:@ 100.26.235.33:1521:XE";

    String dbUsername ="hr";
    String dbPassword = "hr";
    @Test
    public void flexibleNavigation() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = statement.executeQuery("select country_id,country_name from countries ");

        //RETRIEVE DATA

        rs.next();
        System.out.println("-------First row----------");

        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        System.out.println("-------Second row----------");
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        //get data from row 10

        rs.absolute(10);
        System.out.println("-------Row 10---------");
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        //ResultSet.TYPE_SCROLL_INSENSITIVE --> to make flexible navigation
        //ResultSet.CONCUR_READ_ONLY  --> to make ResultSet Object not updated

        System.out.println("------------Get Row  -----------");
        System.out.println(rs.getRow());

        //how many row we have ?
        // first we need to point last row then we are gonna use getRow method
        System.out.println("------------Last row   -----------");
        rs.last();
        System.out.println(rs.getRow());
        System.out.println(rs.getString(1) + " - " + rs.getString(2));



        rs.previous();
       System.out.println("------------Previous row   -----------");
        System.out.println(rs.getString(1) + " - " + rs.getString(2));


        System.out.println("------------First row   -----------");

        rs.first();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));


        System.out.println("------------Print all country IDs and country names   -----------");

        rs.beforeFirst();
        System.out.println("----Print all country IDs and country names-------");


        while (rs.next()) {
            System.out.println(rs.getString(1) + " - " + rs.getString(2));
        }







        rs.close();
        statement.close();
        conn.close();

    }
}

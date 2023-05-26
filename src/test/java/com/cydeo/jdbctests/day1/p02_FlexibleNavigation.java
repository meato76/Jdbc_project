package com.cydeo.jdbctests.day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class p02_FlexibleNavigation {


    @Test
    public void task() throws SQLException {
        // CONNECTION STRING

        String dbUrl = "jdbc:oracle:thin:@34.201.35.61:1521:XE";

        String dbUsername = "hr";
        String dbPassword = "hr";



        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);


        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);


        ResultSet rs = statement.executeQuery("select FIRST_NAME,last_name from employees");

        //first row
        rs.next();
        System.out.println(rs.getString(1) + "  " + rs.getString(2));

        //Second row
        rs.next();
        System.out.println(rs.getString(1) + "  " + rs.getString(2));

        //what if I want to get last row data?
        //last method
        /*
        ResultSet.TYPE_SCROLL_INSENSITIVE --> to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY --> do not update anything from database, read only
         */

        rs.last();
        System.out.println(rs.getString(1) + "  " + rs.getString(2));

        //How many rows we have (last + getRow)
        System.out.println("rowNumber = " + rs.getRow());// Returns: the current row number; 0 if there is no current


        System.out.println("---------------------ABSOLUTE Method------------------------");

        rs.absolute(46);//true if the cursor is moved to a position in this ResultSet object; false if the cursor is before the first row or after the last row
        System.out.println(rs.getString(1) + "  " + rs.getString(2)); //Alexander  Hunold


        System.out.println("---------------------PREVIEWS Method------------------------");

        rs.previous();//true if the cursor is now positioned on a valid row; false if the cursor is positioned before the first row
        System.out.println(rs.getString(1) + "  " + rs.getString(2));//Guy  Himuro

        // print the whole table
        rs.first();// jum to first row

        rs.beforeFirst();// jump into before first row

        System.out.println("---------Printing whole Table----------");

        while (rs.next()){
            System.out.println(rs.getString(1) + "  " + rs.getString(2));
        }


        //close connection
        rs.close();
        conn.close();
        statement.close();

    }

}

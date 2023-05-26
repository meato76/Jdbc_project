package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        // CONNECTION STRING

         String dbUrl ="jdbc:oracle:thin:@100.26.235.33:1521:XE";

         String dbUsername ="hr";
         String dbPassword = "hr";

         // create the connection
        // DriverManager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It will help us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution. it stored only data (there is no table info)

        ResultSet rs  = statement.executeQuery("select * from EMPLOYEES")
                ;


//
//        // GETTING DATA
//
//        rs.next();
//
//        System.out.println("----------------FIRST ROW ___________________");
//        //right now pointer in the first row
//
//
//        // how to get data from first row?
//        //rs.getInt(index) --> this method returns integer. index start from 1 in SQ. it refers column position
//
//        System.out.println(rs.getInt(1));
//        // get the europe - region name
//        System.out.println(rs.getString(2));
//
//
//        // same information we can get with columnLabel not column index
//
//        System.out.println(rs.getInt("REGION_ID"));
//        System.out.println(rs.getString("REGION_NAME"));
//
//        System.out.println("----------------Second ROW ___________________");
//
//        //GET ME Second row result in following format:2 -Americas
//
//        rs.next(); // we need to move pointer to second row
//
//        System.out.println(rs.getString(1) + " " + rs.getString("REGION_NAME"));
//
//        System.out.println("----------------Third ROW ___________________");
//
//        rs.next();//move the pointer to the 3th row
//
//        System.out.println(rs.getInt(1) + " " + rs.getString("REGION_NAME"));
//
//        System.out.println("----------------4TH ROW ___________________");
//
//        rs.next(); //move the pointer to the 4th row
//
//        System.out.println(rs.getInt("REGION_ID") + " " + rs.getString(2));


        //what if we have 100 rows, we want to print first name and second column

        while (rs.next()){
            System.out.println(rs.getString(1) + " - " + rs.getString(2)+ " - " + rs.getString(3));

        }



        //close connection
        rs.close();
        conn.close();
        statement.close();
    }


}

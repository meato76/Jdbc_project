package com.cydeo.jdbctests.jdbc_Practice;

import java.sql.*;

public class P01_TestConnection {
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

        ResultSet rs  = statement.executeQuery("select COUNTRY_ID, COUNTRY_NAME from COUNTRIES");


        //RETRIEVE DATA
        //AS default it shows beforeFirst()
        //use next() method to jum in first row

        rs.next(); //true if the new current row is valid, false if there are no more rows


        //print country_id from first column(country_id)
        System.out.println("rs.getString(1) = " + rs.getString(1));
        System.out.println("rs.getString(\"country_id\") = " + rs.getString("country_id"));

        //print country_name from second column(country_name)
        System.out.println("rs.getString(2) = " + rs.getString(2));
        System.out.println("rs.getString(\"country_name\") = " + rs.getString("country_name"));

        System.out.println("----------------------------------------------------------");
        rs.next();
        // print country_id and country_name in following format
        //COUNTRY_ID - COUNTRY_NAME
        // AR    -  Argentina

       // System.out.println(rs.getString(1)+" - "+rs.getString(2));
      //  rs.next();

       // System.out.println(rs.getString(1)+" - "+rs.getString(2));
       // rs.next();


        //System.out.println(rs.getString(1)+" - "+rs.getString(2));
       // rs.next();


       // System.out.println(rs.getString(1)+" - "+rs.getString(2));
        //rs.next();

        // What if we have 1000 rows?

       while (rs.next()){
           System.out.println(rs.getString(1)+" - "+rs.getString(2));
        }


        //close connection
        rs.close();
        conn.close();
        statement.close();




    }

}

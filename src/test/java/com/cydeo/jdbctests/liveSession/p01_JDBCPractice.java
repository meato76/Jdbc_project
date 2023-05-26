package com.cydeo.jdbctests.liveSession;

import org.junit.jupiter.api.Test;


import java.sql.*;

public class p01_JDBCPractice {

    String dbUrl="jdbc:oracle:thin:@54.237.226.155:1521:XE";
    String dbPassword="hr";
    String dbUsername="hr";

    @Test
    public void jdbcPractice() throws SQLException {

        //Driver Manager class will help us to create connection with provided database connection string
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

         /*
        How to init variable
        Windows --> ALT+ENTER
        MAC --> OPT+ENTER
         */


        //it will creat Statement object to execute queries
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);


        // It will store all data that we are getting after execution
        ResultSet rs = stmnt.executeQuery("select COUNTRY_ID,CITY from locations");


        ResultSetMetaData rsmd = rs.getMetaData();



        /*
        RETRIEVING DATA IN FOLLOWING FORMAT
        IT - Roma
         */


        System.out.println("-------First Row-------------------");
        rs.next();

        System.out.println(rs.getString(1)+ "-"+ rs.getString(2));


        System.out.println("-------Second Row-------------------");
        rs.next();

        System.out.println(rs.getString(1)+ "-"+ rs.getString(2));

        System.out.println("------- 10TH Row-------------------");
        rs.absolute(10);

        System.out.println(rs.getString(1)+ "-"+ rs.getString(2));

        System.out.println("-------------------Get Row ---------------");
        System.out.println(rs.getRow());

        System.out.println("---------How many row we have-----------");

        rs.last();
        System.out.println(rs.getRow());

        System.out.println("-------Get previews Row-----------");

        rs.previous();
        System.out.println(rs.getString(1)+ "-"+ rs.getString(2));

        System.out.println("-------First-----------");
        rs.first();
        System.out.println(rs.getString(1)+ "-"+ rs.getString(2));

        //PRINT ALL DATA DYNAMICALLY

        rs.beforeFirst();

        System.out.println("--PRINT ALL DATA DYNAMICALLY------");


        while (rs.next()){

            System.out.println(rs.getString(1)+ " - "+ rs.getString(2));

        }

        //HOW MANY COLUMN WE HAVE

        int columnCount = rsmd.getColumnCount();

        System.out.println(columnCount);

        //HOW TO LEAN COLUMN NAME


        System.out.println("----------HOW TO LEAN COLUMN NAME-------");
        System.out.println(rsmd.getColumnName(1));
        System.out.println(rsmd.getColumnName(2));

        //PRINT ALL COLUMN DYNAMICALLY

        for (int i = 1; i <= columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }

        System.out.println("-----------GET ALL DATA DYNAMICALLY--------------");

        //COUNTRY_ID IT CITY _Roma
        //COUNTRY_ID IT CITY _Venice

        // to reset cursor
        rs.beforeFirst();

        // ITERATE EACH ROW DYNAMICALLY
        while(rs.next()){

            // ITERATE EACH COLUMN DYNAMICALLY
            for (int i = 1; i <= columnCount; i++) {

                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+"    ");

            }
            System.out.println();

        }



        rs.close();
        stmnt.close();
        conn.close();

    }

}

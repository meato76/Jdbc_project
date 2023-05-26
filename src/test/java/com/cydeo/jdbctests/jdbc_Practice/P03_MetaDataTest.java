package com.cydeo.jdbctests.jdbc_Practice;


import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {

    String dbUrl ="jdbc:oracle:thin:@ 100.26.235.33:1521:XE";

    String dbUsername ="hr";
    String dbPassword = "hr";

    @Test
    public void dbMetaData() throws SQLException {

        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        DatabaseMetaData dbMetaData = connection.getMetaData();


        System.out.println("dbMetaData.getUserName() = " + dbMetaData.getUserName());
        System.out.println("dbMetaData.getDriverName() = " + dbMetaData.getDriverName());
        System.out.println("dbMetaData.getDriverVersion() = " + dbMetaData.getDriverVersion());
        System.out.println("dbMetaData.getDatabaseProductVersion() = " + dbMetaData.getDatabaseProductVersion());
        System.out.println("dbMetaData.getDatabaseProductName() = " + dbMetaData.getDatabaseProductName());


        connection.close();

    }

    @Test
    public void rsDataMeta() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        ResultSet rs = stmnt.executeQuery("select  * from EMPLOYEES");


        //ResultSetMetaData --> It is data about table itself
        //we are gonna get information about columnCount and columnName

        ResultSetMetaData rsmd = rs.getMetaData();

        //How many column we have?
        int columnCount = rsmd.getColumnCount();
        System.out.println("columnCount = " + columnCount);

        // what is the second name?

        System.out.println("rsmd.getColumnName(2) = " + rsmd.getColumnName(2));


        System.out.println("----------print all column names----------------");

        for (int i = 1; i < columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }

        /*
            HOW TO GET DATA DYNAMICALLY FROM ANY QUERY?

            ResultSet  --> It holds table contents/data
            rs.next() --> to iterate each row dynamically
            rs.getString --> (columnIndex) --> data from that cell
            rs.getString --> (columnName) --> data from that cell

            ResultSet MetaData --> It holds table information

            rsmd.getColumnCount() -->how many column we have
            rsmd.getColumn(columnIndex) --> gives columnName

         */

        // COUNTRY_ID - AR country_Name - Argentina Region_ID - 2
        //iterate each row dynamically

        //iterate each column


        while (rs.next()){
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(rsmd.getColumnName(i)+" - "+ rs.getString(i)+"  ");

            }
            System.out.println();
        }




        rs.close();
        stmnt.close();
        conn.close();
    }
}

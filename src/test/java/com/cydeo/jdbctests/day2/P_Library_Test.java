package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P_Library_Test {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY";


    @Test
    public void task1(){

        //create connection_
        DB_Util.createConnection(url,username,password);

        //run query
        DB_Util.runQuery("Select count(*) from books");


        String expectedBooksCount = DB_Util.getFirstRowFirstColumn();

        /*

        Actual comes from UI with selenium, cucumber etc..
         */

        String actualBooksCount = "6274";

        Assertions.assertEquals(expectedBooksCount,actualBooksCount);

        System.out.println(expectedBooksCount);


        //close connection
        DB_Util.destroy();

    }
}

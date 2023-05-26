package com.cydeo.jdbctests.jdbc_Practice;

import com.cydeo.jdbctests.DB_Util;
import org.junit.jupiter.api.Test;

public class P02_DBUtilPractices {

    @Test
    public void dbUtil() {


        // CREATE CONN
        DB_Util.createConnection();

        // EXECUTE QUERY
        DB_Util.runQuery("select * from locations");


        System.out.println("GET ME ROW COUNT ");
        System.out.println(DB_Util.getRowCount());
/*
        System.out.println("GET ME COLUMN COUNT ");
        System.out.println(DB_Util.getColumnCount());

        System.out.println("GET ALL COLUMN NAME AS LIST");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("GET ROW DATA AS LIST--> FIRST ROW --> 1 ");
        System.out.println(DB_Util.getRowDataAsList(1));

        System.out.println("GET CELL VALUE --> int rowNum , int columnIndex");
        System.out.println(DB_Util.getCellValue(1, 1));

        System.out.println("GET CELL VALUE --> int rowNum ,String columnName");
        System.out.println(DB_Util.getCellValue(1, "city"));


        System.out.println("GET FIRST ROW FIRST COLUMN VALUE");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("GET COLUMN DATA AS LIST--> int columnNum");
        System.out.println(DB_Util.getColumnDataAsList(2));

        System.out.println("GET COLUMN DATA AS LIST--> String columnName");
        System.out.println(DB_Util.getColumnDataAsList("city"));
        List<String> cities = DB_Util.getColumnDataAsList("city");


        System.out.println("GET ROW MAP");
        System.out.println(DB_Util.getRowMap(1));

        System.out.println("GET ALL ROW AS LIST OF MAP");

        List<Map<String, String>> allData = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> eachRow : allData) {
            System.out.println(eachRow);
        }

 */

        // CLOSE CONN
        DB_Util.destroy();
    }
}
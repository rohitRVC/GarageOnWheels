
import java.io.*;
import java.util.*;

import javax.naming.spi.DirStateFactory.Result;

import java.sql.*;

public class DBUtil {
    // JDBC driver name and database URL
    final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost/test";

    // Database credentials
    final String USER = "root";
    final String PASS = "";

    // Set response content type
    Connection conn = null;
    Statement stmt = null;

    public ResultSet getResult(String query) {

        try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Execute SQL query
            stmt = conn.createStatement();
            
            ResultSet rs = stmt.executeQuery(query);

            // System.out.println(rs1.toString());
            // Clean-up environment
            stmt.close();
            conn.close();
            rs.close();
            return rs;
        } catch (SQLException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            // finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            } // end finally try
        } // end try
     return null;
   }
}
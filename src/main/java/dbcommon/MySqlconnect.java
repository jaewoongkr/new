package dbcommon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlconnect {
    static final String MYSQL_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String MYSQL_URL = "jdbc:mysql://localhost:3306/bit701";
    static final String USERNAME = "root";
    static final String PASSWORD = "35373537";

    public MySqlconnect() {
        try {
            Class.forName(MYSQL_DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.println("Mysql 드라이버 실패: " + e.getMessage());
        }
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(MYSQL_URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            System.out.println("Mysql 연결 실패: " + e.getMessage());
        }
        return conn;
    }

    public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("데이터베이스 닫기 오류: " + e.getMessage());
        }
    }

    public void dbClose(PreparedStatement pstmt, Connection conn) {
        dbClose(null, pstmt, conn);
    }

    public void dbClose(ResultSet rs, Statement stmt, Connection conn) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("데이터베이스 닫기 오류: " + e.getMessage());
        }
    }

    public void dbClose(Statement stmt, Connection conn) {
        dbClose(null, stmt, conn);
    }
}







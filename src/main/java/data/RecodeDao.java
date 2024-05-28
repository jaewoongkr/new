package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import dbcommon.MySqlconnect;

public class RecodeDao {
    MySqlconnect db=new MySqlconnect();

    //추가
    public void insertRecode(RecodeDto dto) {
        String sql = "INSERT INTO recode (name, review, score) VALUES (?, ?, ?)";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;

        try {
            if (conn != null) {
                pstmt = conn.prepareStatement(sql);
                // 바인딩
                pstmt.setString(1, dto.getName());
                pstmt.setString(2, dto.getReview());
                pstmt.setString(3, dto.getScore());
                // 실행
                pstmt.execute();
            } else {
                // 연결 객체가 null인 경우 로그 출력
                System.out.println("데이터베이스 연결이 실패했습니다.");
            }
        } catch (SQLException e) {
            // SQL 예외 발생 시 로그 출력
            e.printStackTrace();
        } finally {
            db.dbClose(pstmt, conn);
        }
    }

    //전체출력
    public List<RecodeDto> getAllRecode() {
        List<RecodeDto> list=new Vector<RecodeDto>();
        String sql = "SELECT * FROM recode ORDER BY name ASC";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            if (conn != null) { // 연결 객체가 null이 아닌지 확인
                pstmt=conn.prepareStatement(sql);
                //실행
                rs=pstmt.executeQuery();

                while(rs.next()) {
                    RecodeDto dto=new RecodeDto();
                    dto.setNum(rs.getInt("num"));
                    dto.setName(rs.getString("name"));
                    dto.setReview(rs.getString("review"));
                    dto.setScore(rs.getString("score"));
                    //list 에 추가
                    list.add(dto);
                }
            } else {
                // 연결 객체가 null일 때 처리할 코드
                System.out.println("데이터베이스 연결이 실패했습니다.");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }

        return list;
    }

    //한개반환
    public RecodeDto getData(int num)
    {
        RecodeDto dto=new RecodeDto();
        String sql = "SELECT * FROM recode WHERE num=?";
        Connection conn=db.getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;

        try {
            pstmt=conn.prepareStatement(sql);
            //바인딩
            pstmt.setInt(1, num);
            //실행
            rs=pstmt.executeQuery();

            if(rs.next()) {
                dto.setNum(rs.getInt("num"));
                dto.setName(rs.getString("name"));
                dto.setReview(rs.getString("review"));
                dto.setScore(rs.getString("score"));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            db.dbClose(rs, pstmt, conn);
        }
        return dto;
    }

    //삭제
    public void deleteRecode(int num)
    {
        String sql="DELETE FROM recode WHERE num=?";
        Connection conn=db.getConnection();
        PreparedStatement pstmt=null;

        try {
            pstmt=conn.prepareStatement(sql);
            //바인딩
            pstmt.setInt(1, num);
            //실행
            pstmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            db.dbClose(pstmt, conn);
        }
    }
}












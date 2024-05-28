
<%@ page import="data.RecodeDto" %>
<%@ page import="data.RecodeDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    //1. 엔코딩
    request.setCharacterEncoding("utf-8");
    //2. 5개의 상품데이타 읽기
    String name=request.getParameter("name");
    String review=request.getParameter("review");
    String score=request.getParameter("score");

    //3. dto 에 넣기(생성자로 넣기)
    RecodeDto dto=new RecodeDto(name,review,score);

    //4. dao 선언
    RecodeDao dao=new RecodeDao();

    //5. insert 메서드 호출
    dao.insertRecode(dto);

    response.sendRedirect("index.jsp#home4");
%>
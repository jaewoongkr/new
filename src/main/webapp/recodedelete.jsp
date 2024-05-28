<%@ page import="data.RecodeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    int num=Integer.parseInt(request.getParameter("num"));
    RecodeDao dao=new RecodeDao();
    dao.deleteRecode(num);

    response.sendRedirect("index.jsp#section4"); //경로 수정
%>

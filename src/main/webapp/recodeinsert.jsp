<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    //한글 엔코딩
    request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="dto" class="data.RecodeDto"/>
<jsp:useBean id="dao" class="data.RecodeDao"/>

<jsp:setProperty name="dto" property="*"/>
<%
    //insert 메서드 호출
    dao.insertRecode(dto);
    //사원목록으로 이동
    response.sendRedirect("recodelist.jsp#section4");
%>
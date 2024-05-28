
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            background-image:linear-gradient(to bottom, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0.6)), url(image/background.jpeg);
        }
        .container {
            margin: 300px auto 0; /* 가운데 정렬 및 상단 여백 설정 */
            width: 500px; /* 너비 설정 */
            padding: 10px; /* 좌우 여백 설정 */
            border: 2px solid black;
            background-color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <form action="recodeaction.jsp" method="post">
        <label for="name">가수-앨범:</label><br>
        <input type="text" id="name" name="name"><br><br>

        <label for="review">리뷰:</label><br>
        <textarea id="review" name="review" rows="4" cols="50"></textarea><br><br>

        <label for="score">점수:</label>
        <input type="number" id="score" name="score" min="1" max="100"><br><br>

        <input type="submit" value="작성">
    </form>
</div>
</body>
</html>


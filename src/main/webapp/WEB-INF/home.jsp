<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Film Search</title>
</head>
<body>
    <h1>Film Search</h1>

    <form action="GetFilmData.do" method="get">
        <label for="filmId">Search by Film ID:</label>
        <input type="text" id="filmId" name="filmID">
        <button type="submit">Search</button>
    </form>

    <form action="GetKeywordData.do" method="get">
        <label for="filmKeyword">Search by Keyword:</label>
        <input type="text" id="filmKeyword" name="filmKeyword">
        <button type="submit">Search</button>
    </form>
    
     <form action="ListAllFilms.do" method="get">
        <input type="submit" value="Show All Films">
    </form>
</body>
</html>


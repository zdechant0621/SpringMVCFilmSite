<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details By ID</title>
</head>
<body>
	<h1>Film Details By ID</h1>

	<ul>
		<li><strong>Title:</strong> ${film.title}</li>
		<li><strong>Description:</strong> ${film.description}</li>
		<li><strong>Language ID:</strong> ${film.langId}</li>
		<li><strong>Rental Duration:</strong> ${film.rentDur}</li>
		<li><strong>Rental Rate:</strong> ${film.rate}</li>
		<li><strong>Length:</strong> ${film.length}</li>
		<li><strong>Replacement Cost:</strong> ${film.repCost}</li>
		<li><strong>Rating:</strong> ${film.rating}</li>
		<li><strong>Special Features:</strong> ${film.feature}</li>
		<li><strong>Language:</strong> ${film.language}</li>
	</ul>


</body>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=”utf-8”>
<link href="../adminStyles.css" rel="stylesheet" type="text/css" />

<link href="../bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../sponsorStyles.css" rel="stylesheet">

<script src="../bootstrap.js"></script>
<title>Greyhound Rescue</title>

</head>
<body>
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="" role="button">Greyhound Pets of
					America - Orlando</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>

					<li><a href="manage-greyhounds">Manage Greyhounds</a></li>
					<li><a href="New-sponsor">Create New Sponsor</a></li>
					<li><a href="Logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>


	<div id="page">

		<h1>Manage Sponsors</h1>

		<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request" />


		<table>
			<tr>
			<tbody>
				<th>Name</th>
				<th>Sponsored Greys</th>
				</tr>

				<c:forEach var="sponsor" items="${facade.sponsors}">

					<tr>
						<td>${sponsor.name}</td>
						<td>
							<!-- Print list of greyhounds with commas, but not for the first greyhound -->
							<c:set var="firstGreyhound" value="true" /> <c:forEach
								var="sponsoredGrey" items="${sponsor.sponsoredGreys}">
								<c:choose>
									<c:when test="${firstGreyhound eq true}">
				${sponsoredGrey.greyhound.name}
				<c:set var="firstGreyhound" value="false" />
									</c:when>
									<c:otherwise>
				&#44; ${sponsoredGrey.greyhound.name}
			</c:otherwise>
								</c:choose>
							</c:forEach>
						</td>

						<td><a href="update-sponsor?id=${sponsor.id}">Edit</a></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="../bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../adminStyles.css" rel="stylesheet" type="text/css" />
<script src="../bootstrap.js"></script>

<script>

function confirm_delete() {
	return confirm('Are you sure you want to delete this sponsor?');
}

</script>

<title>Greyhound Rescue</title>
</head>
<body>

<div id="page">

<div id="header">
	<h1>Manage Sponsors</h1>
</div>

	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="" role="button">Greyhound Pets of America - Orlando</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>

					<li><a href="new-sponsor">Create New Sponsor</a></li>
					<li><a href="manage-greyhounds">Manage Greyhounds</a></li>
					<li><a href="Logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>



<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request" />

<c:forEach var="sponsor" items="${facade.allSponsors}">

<div class="content-item">

<div class="listDetail">
	<div class="detailActionContainer">
		<a href="update-sponsor?id=${sponsor.id}">Edit</a>
		<a href="delete-sponsor?id=${sponsor.id}" onclick="return confirm_delete()">Delete</a>
	</div>

	<div class="detail">
		<div class="inputField"><label>Name</label><input type="text" disabled="disabled" readonly="readonly" name="name" value="${sponsor.name}" /></div>
		<c:if test = "${not empty sponsor.greyhound}">
		<div class="inputField"><label>Associated With</label><input type="text" disabled="disabled" readonly="readonly" name="name" value="${sponsor.greyhound.name}" /></div>
		</c:if>
	</div> <!-- detail -->
</div> <!-- listDetail -->

</div> <!-- content-item -->

</c:forEach>

<div id="footer">Any footer info goes here (e.g. Copyright info)</div>

</div>
</body>
</html>
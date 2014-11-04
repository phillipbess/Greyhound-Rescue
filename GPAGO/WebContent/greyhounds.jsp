<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:p="urn:schemas-microsoft-com:office:powerpoint"
	xmlns:v="urn:schemas-microsoft-com:vml"
	xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>GPAGO Available Greys</title>

<link href="twoColElsLtHdr.css" rel="stylesheet" type="text/css" />

<!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.twoColElsLtHdr #sidebar1 { padding-top: 30px; }
.twoColElsLtHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]-->


<style type="text/css">
<!--
.style6 {
	font-size: small
}
-->
</style>
<style type="text/css">
<!--
.style8 {
	font-size: smaller
}

.style9 {
	font-size: medium
}

#nav {
	height: 2.2em;
	width: 780px;
}

body {
	background-color: #dddddd;
}
-->
</style>

<style type="text/css">
<!--
h2 {
	color: #0055a5;
}

h3 {
	color: #0055a5;
}

.style17 {
	font-size: 90%
}

.O {
	font-size: 149%;
}

div.Section1 {
	page: Section1;
}

.style30 {
	border-width: 0px;
}

.style61 {
	margin-top: 1px;
	margin-bottom: 1px;
}

.auto-style14 {
	margin-top: 1px;
	margin-bottom: 1px;
	color: #FF0000;
	font-family: Arial, Helvetica, sans-serif;
}

.auto-style17 {
	font-size: smaller;
	font-weight: bold;
}

.auto-style19 {
	color: #FF0000;
	font-size: x-small;
}

.auto-style24 {
	margin-top: 1px;
	margin-bottom: 1px;
	font-family: Arial, Helvetica, sans-serif;
}

.auto-style28 {
	text-align: center;
}

.auto-style45 {
	font-size: smaller;
	font-weight: bold;
	color: #3333CC;
}

.auto-style86 {
	border-style: none;
	padding: 0;
}
-->
</style>
<base target="_blank" />
</head>

<body class="twoColElsLtHdr">
	<div id="mainContent">
		<center />

		<h2>Available Greys</h2>

		<p class="style112" style="width: 700px">

			 Note: If a Greyhound is designated <strong>&quot;cat
					friendly&quot;</strong>, this means that the Greyhound tested non
				aggressively with the cat in a controlled situation. There is no
				guarantee that this same dog will react the same in a home setting.
				Additionally, the most cat friendly Greyhound in the house may
				likely give chase to a cat or small animal outside the house.
			 
		</p>
		<p class="style112" style="width: 700px">
			<span class="style120" /> <span class="style9"> Thanks to all
				who sponsor a Greyhound that is in our care.&nbsp; For a donation of
				$10 / month you can help pave the way to a forever home for one of
				these Greyt animals.&nbsp; <br />
			</span>

		</p>

		<p class="style6">**   Click on the Greyhound&#39;s face to
			see another picture   **</p>
		<br />


		<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request" />

		<table width="504" border="1">

			<c:forEach var="greyhound" items="${facade.greyhounds}">

				<c:choose>
					<c:when test="${greyhound.adoptionStatus == 'Available'}">

						<tr>
							<td width="151" rowspan="9"><a
								href="image?idx=2&id=${greyhound.id}" target="_blank"> <img
									class="style30" height="202" width="156"
									src="image?idx=1&id=${greyhound.id}" /></a></td>

							<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
									Name:</strong></td>
							<td width="201" bgcolor="#c3d2ed" class="auto-style17">${greyhound.name}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px">Date of Birth:</td>
							<td width="201" class="style8">${greyhound.dateOfBirth}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px">Gender:</td>
							<td width="201" class="style8">${greyhound.gender}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px">Weight:</td>
							<td width="201" class="style8">${greyhound.weight}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px; height: 16px;">Color:</td>
							<td width="201" class="style8" style="height: 16px">${greyhound.color}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px">Cat friendly:</td>
							<td width="201" class="style8" style="height: 18px">${greyhound.catFriendly ? 'Yes' : 'No'}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px; height: 22px;">Home
								acclimated:</td>
							<td width="201" class="style8" style="height: 22px">${greyhound.homeAcclimated ? 'Yes' : 'No'}</td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px; height: 22px;">Personality/more
								info:</td>
							<td width="201" class="style8"><span class="auto-style86">${greyhound.personality}
									&amp; ${greyhound.moreInfo}</span><br /> <em>additional <c:if
										test='${greyhound.image3Exists}'>
										<a href="image?idx=3&id=${greyhound.id}" target="_blank">pic</a>,
						</c:if> <c:if test='${greyhound.image4Exists}'>
										<a href="image?idx=4&id=${greyhound.id}" target="_blank">pic</a>
									</c:if> <c:if test='${greyhound.image5Exists}'>
										<a href="image?idx=5&id=${greyhound.id}" target="_blank">pic</a>
									</c:if>

							</em></td>
						</tr>
						<tr>
							<td class="style8" style="width: 141px; height: 21px;">Sponsored
								by:</td>
							<td width="201" class="style8" style="height: 21px"><c:forEach
									var="sponsor" items="${greyhound.sponsors}">

									<p class="style61">${sponsor.name}</p>

								</c:forEach>

								<p class="style61">
									<a href="sponsorform.html">Click here to sponsor me</a>
								</p></td>
						</tr>

					</c:when>
				</c:choose>

			</c:forEach>
		</table>

	</div>

	<div id="footer"></div>

</body>
</html>
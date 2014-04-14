<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Testing commit -->
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../adminStyles.css" rel="stylesheet" type="text/css"/>
<!-- JQuery from google / This can or should be replaced -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script>
$(document).ready(function(){
	$("#btnLeft").click(function () {
	    var selectedItem = $("#allSponsors option:selected");
	    $("#sponsors").append(selectedItem);
	});
});
$(document).ready(function(){
	$("#btnRight").click(function () {
	    var selectedItem = $("#sponsors option:selected");
	    $("#allSponsors").append(selectedItem);
	});
});


function selectAllSponsors() {
	$('#sponsors option').prop('selected', true);
}
</script>

<title>Greyhound Rescue</title>
</head>

<body>
<div id="page">

<h1>Enter Greyhound Information</h1>

<jsp:useBean id="greyhound" type="gpago.view.GreyhoundFormBean" scope="request"/>
<jsp:useBean id="facade" class="gpago.view.ViewFacade" scope="request"/>

<form method="post" enctype="multipart/form-data" action="save-greyhound" onsubmit=selectAllSponsors();>

<input type="hidden" name="id" value="${greyhound.id}">

<div class="detail">
	<div class="inputField"><label>Name</label><input type="text" name="name" value="${greyhound.name}" />${greyhound.nameValidationText}</div>
	<div class="inputField"><label>Date of Birth</label><input type="date" name="dateOfBirth" placeholder="mm/dd/yyyy" value="${greyhound.dateOfBirth}" /></div>
	<div class="inputField"><label>Gender</label><select name="gender">
			<option value='${greyhound.gender}' disabled selected style='display:none;'>${greyhound.gender}</option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>	
	</select></div>
	<!-- When creating a new grey, do not display 0. Display an empty box -->
	<c:set var="weight" value="${greyhound.weight}"/>
	<c:choose>
		<c:when test="${weight eq 0}">
			<div class="inputField"><label>Weight</label><input type="text" name="weight" value="" /></div>
		</c:when>
		<c:otherwise>
			<div class="inputField"><label>Weight</label><input type="text" name="weight" value="${weight}" /></div>
		</c:otherwise>
	</c:choose>
	<div class="inputField"><label>Color</label><select name="color">
			<option value='${greyhound.color}' disabled selected style='display:none;'>${greyhound.color}</option>
			<option value="Black">Black</option>
			<option value="Black Brindle">Black Brindle</option>
			<option value="Blue">Blue</option>
			<option value="Blue Brindle">Blue Brindle</option>
			<option value="Blue Fawn">Blue Fawn</option>
			<option value="Brindle">Brindle</option>
			<option value="Dark Brindle">Dark Brindle</option>
			<option value="Dark Fawn">Dark Fawn</option>
			<option value="Dark Red">Dark Red</option>
			<option value="Fawn">Fawn</option>
			<option value="Fawn Brindle">Fawn Brindle</option>
			<option value="Light Brindle">Light Brindle</option>
			<option value="Light Red">Light Red</option>
			<option value="Light Ticked Brindle">Light Ticked Brindle</option>
			<option value="Red">Red</option>
			<option value="Red Brindle">Red Brindle</option>
			<option value="Red Fawn">Red Fawn</option>
			<option value="Red Fawn Brindle">Red Fawn Brindle</option>
			<option value="Silver Brindle">Silver Brindle</option>
			<option value="White">White</option>
			<option value="White and Black">White and Black</option>
			<option value="White and Blue">White and Blue</option>
			<option value="White and Brindle">White and Brindle</option>
			<option value="White and Fawn">White and Fawn</option>
			<option value="White and Red">White and Red</option>
			<option value="White Blue Brindle">White Blue Brindle</option>
			<option value="White Dark Brindle">White Dark Brindle</option>
			<option value="White Red Brindle">White Red Brindle</option>
			<option value="White Red Fawn">White Red Fawn</option>
			<option value="White Ticked Black">White Ticked Black</option>
			<option value="White Ticked Blue">White Ticked Blue</option>
			<option value="White Ticked Brindle">White Ticked Brindle</option>
			<option value="White Ticked Dark Brindle">White Ticked Dark Brindle</option>
			<option value="White Ticked Fawn">White Ticked Fawn</option>
			<option value="White Ticked Light Brindle">White Ticked Light Brindle</option>
			<option value="White Ticked Red">White Ticked Red</option>
			<option value="White Ticked Red Brindle">White Ticked Red Brindle</option>
			<option value="White Ticked Red Fawn">White Ticked Red Fawn</option>	
	</select></div>
	<div class="inputField"><label>Personality</label><input type="text" name="personality" value="${greyhound.personality}" /></div>
	<div class="inputField"><label>More info</label><textarea name="moreInfo">${greyhound.moreInfo}</textarea></div>
	<div class="inputField"><label>Cat Friendly</label><input type="checkbox" name="catFriendly" ${greyhound.catFriendly ? ' checked="checked"' : ''} /></div>
	<div class="inputField"><label>Home Acclimated</label><input type="checkbox" name="homeAcclimated" ${greyhound.homeAcclimated ? ' checked="checked"' : ''} /></div>
	<div class="inputField"><label>Location</label>
		<select name="location">
			<option value='${greyhound.location}' disabled selected style='display:none;'>${greyhound.location}</option>
			<option value="Foster Home">Foster Home</option>
			<option value="Kennel">Kennel</option>
	</select></div>		
	<div class="inputField"><label>Adoption Status</label>
		<select name="adoptionStatus">
			<option value='${greyhound.adoptionStatus}' disabled selected style='display:none;'>${greyhound.adoptionStatus}</option>
			<option value="Adopted">Adopted</option>
			<option value="Available">Available</option>
			<option value="Pending">Pending</option>
	</select></div>
	
	<div class="inputField"><label>Sponsored By:</label>
        <select id="sponsors" size="5" name="sponsors" multiple>
	        <c:forEach var="sponsor" items="${greyhound.sponsors}">
					<option value="${sponsor.id}" selected>${sponsor.name}</option>
			</c:forEach>
        </select>
	    <div id="shuttle-buttons">
	        <input type="button" id="btnLeft" value="&lt;" />
	        <input type="button" id="btnRight" value="&gt;" />
	    </div>
        <select id="allSponsors" size="5" multiple>
            <c:forEach var="sponsor" items="${facade.sponsors}">
				<option value="${sponsor.id}" selected>${sponsor.name}</option>
			</c:forEach>
		</select>
	</div>
	<div class="inputField"><label>Image 1</label><input type="file" name="image1"></div>
	<div class="inputField"><label>Image 2</label><input type="file" name="image2"></div>
	<div class="inputField"><label>Image 3</label><input type="file" name="image3"></div>
	<div class="inputField"><label>Image 4</label><input type="file" name="image4"></div>
	<div class="inputField"><label>Image 5</label><input type="file" name="image5"></div>
	
</div> <!-- detail -->

<div class="formButtons">
	<button type="submit">Save</button>
	<button type="button" onclick="window.location='manage-greyhounds';return false;">Cancel</button>
</div>
</form>

</div>
</body>
</html>
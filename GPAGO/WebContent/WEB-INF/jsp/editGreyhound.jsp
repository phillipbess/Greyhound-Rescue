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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<title>Greyhound Rescue</title>
</head>
<body>
<script>
$(document).ready(function(){
	$("#btnLeft").click(function () {
	    var selectedItem = $("#rightValues option:selected");
	    $("#leftValues").append(selectedItem);
	});
});
$(document).ready(function(){
	$("#btnRight").click(function () {
	    var selectedItem = $("#leftValues option:selected");
	    $("#rightValues").append(selectedItem);
	});
});

</script>
<div id="page">

<h1>Enter Greyhound Information</h1>

<jsp:useBean id="greyhound" type="gpago.view.GreyhoundFormBean" scope="request"/>
<jsp:useBean id="facade" class="gpago.view.ViewFacade" scope="request"/>

<form method="post" enctype="multipart/form-data" action="save-greyhound">

<input type="hidden" name="id" value="${greyhound.id}">

<div class="detail">
	<div class="inputField"><label>Name</label><input type="text" name="name" value="${greyhound.name}" />${greyhound.nameValidationText}</div>
	<div class="inputField"><label>Date of Birth</label><input type="date" name="dateOfBirth" placeholder="mm/dd/yyyy" value="${greyhound.dateOfBirth}" /></div>
	<div class="inputField"><label>Gender</label><input type="text" name="gender" value="${greyhound.gender}" /></div>
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
			<option value="Black" ${greyhound.color == 'Black' ? ' selected="selected"' : ''} >Black</option>
			<option value="Black Brindle" ${greyhound.color == 'Black Brindle' ? ' selected="selected"' : ''} >Black Brindle</option>
			<option value="Blue" ${greyhound.color == 'Blue' ? ' selected="selected"' : ''} >Blue</option>
			<option value="Blue Brindle" ${greyhound.color == 'Blue Brindle' ? ' selected="selected"' : ''} >Blue Brindle</option>
			<option value="Blue Fawn" ${greyhound.color == 'Blue Fawn' ? ' selected="selected"' : ''} >Blue Fawn</option>
			<option value="Brindle" ${greyhound.color == 'Brindle' ? ' selected="selected"' : ''} >Brindle</option>
			<option value="Dark Brindle" ${greyhound.color == 'Dark Brindle' ? ' selected="selected"' : ''} >Dark Brindle</option>
			<option value="Dark Fawn" ${greyhound.color == 'Dark Fawn' ? ' selected="selected"' : ''} >Dark Fawn</option>
			<option value="Dark Red" ${greyhound.color == 'Dark Red' ? ' selected="selected"' : ''} >Dark Red</option>
			<option value="Fawn" ${greyhound.color == 'Fawn' ? ' selected="selected"' : ''} >Fawn</option>
			<option value="Fawn Brindle" ${greyhound.color == 'Fawn Brindle' ? ' selected="selected"' : ''} >Fawn Brindle</option>
			<option value="Light Brindle" ${greyhound.color == 'Light Brindle' ? ' selected="selected"' : ''} >Light Brindle</option>
			<option value="Light Red" ${greyhound.color == 'Light Red' ? ' selected="selected"' : ''} >Light Red</option>
			<option value="Light Ticked Brindle" ${greyhound.color == 'Light Ticked Brindle' ? ' selected="selected"' : ''} >Light Ticked Brindle</option>
			<option value="Red" ${greyhound.color == 'Red' ? ' selected="selected"' : ''} >Red</option>
			<option value="Red Brindle" ${greyhound.color == 'Red Brindle' ? ' selected="selected"' : ''} >Red Brindle</option>
			<option value="Red Fawn" ${greyhound.color == 'Red Fawn' ? ' selected="selected"' : ''} >Red Fawn</option>
			<option value="Red Fawn Brindle" ${greyhound.color == 'Red Fawn Brindle' ? ' selected="selected"' : ''} >Red Fawn Brindle</option>
			<option value="Silver Brindle" ${greyhound.color == 'Silver Brindle' ? ' selected="selected"' : ''} >Silver Brindle</option>
			<option value="White" ${greyhound.color == 'White' ? ' selected="selected"' : ''} >White</option>
			<option value="White and Black" ${greyhound.color == 'White and Black' ? ' selected="selected"' : ''} >White and Black</option>
			<option value="White and Blue" ${greyhound.color == 'White and Blue' ? ' selected="selected"' : ''} >White and Blue</option>
			<option value="White and Brindle" ${greyhound.color == 'White and Brindle' ? ' selected="selected"' : ''} >White and Brindle</option>
			<option value="White and Fawn" ${greyhound.color == '' ? ' selected="selected"' : ''} >White and Fawn</option>
			<option value="White and Red" ${greyhound.color == 'White and Red' ? ' selected="selected"' : ''} >White and Red</option>
			<option value="White Blue Brindle" ${greyhound.color == 'White Blue Brindle' ? ' selected="selected"' : ''} >White Blue Brindle</option>
			<option value="White Dark Brindle" ${greyhound.color == 'White Dark Brindle' ? ' selected="selected"' : ''} >White Dark Brindle</option>
			<option value="White Red Brindle" ${greyhound.color == 'White Red Brindle' ? ' selected="selected"' : ''} >White Red Brindle</option>
			<option value="White Red Fawn" ${greyhound.color == 'White Red Fawn' ? ' selected="selected"' : ''} >White Red Fawn</option>
			<option value="White Ticked Black" ${greyhound.color == 'White Ticked Black' ? ' selected="selected"' : ''} >White Ticked Black</option>
			<option value="White Ticked Blue" ${greyhound.color == 'White Ticked Blue' ? ' selected="selected"' : ''} >White Ticked Blue</option>
			<option value="White Ticked Brindle" ${greyhound.color == 'White Ticked Brindle' ? ' selected="selected"' : ''} >White Ticked Brindle</option>
			<option value="White Ticked Dark Brindle" ${greyhound.color == 'White Ticked Dark Brindle' ? ' selected="selected"' : ''} >White Ticked Dark Brindle</option>
			<option value="White Ticked Fawn" ${greyhound.color == 'White Ticked Fawn' ? ' selected="selected"' : ''} >White Ticked Fawn</option>
			<option value="White Ticked Light Brindle" ${greyhound.color == 'White Ticked Light Brindle' ? ' selected="selected"' : ''} >White Ticked Light Brindle</option>
			<option value="White Ticked Red" ${greyhound.color == 'White Ticked Red' ? ' selected="selected"' : ''} >White Ticked Red</option>
			<option value="White Ticked Red Brindle" ${greyhound.color == 'White Ticked Red Brindle' ? ' selected="selected"' : ''} >White Ticked Red Brindle</option>
			<option value="White Ticked Red Fawn" ${greyhound.color == 'White Ticked Red Fawn' ? ' selected="selected"' : ''} >White Ticked Red Fawn</option>	
	</select></div>
	<div class="inputField"><label>Personality</label><input type="text" name="personality" value="${greyhound.personality}" /></div>
	<div class="inputField"><label>Cat Friendly</label><input type="checkbox" name="catFriendly" ${greyhound.catFriendly ? ' checked="checked"' : ''} /></div>
	<div class="inputField"><label>Home Acclimated</label><input type="checkbox" name="homeAcclimated" ${greyhound.homeAcclimated ? ' checked="checked"' : ''} /></div>
	<div class="inputField"><label>More info</label><textarea name="moreInfo">${greyhound.moreInfo}</textarea></div>
	<div class="inputField"><label>Sponsored By:</label>
	<div class="inputField">	
        <select id="leftValues" size="5" name="sponsors[]" multiple>
	        <c:forEach var="sponsorship" items="${greyhound.sponsors}">
					<option value="${sponsorship.sponsor.id}">${sponsorship.sponsor.name}</option>
			</c:forEach>
		</select>
	    <div id="shuttle-buttons">
	        <input type="button" id="btnLeft" value="&lt;" />
	        <input type="button" id="btnRight" value="&gt;" />
	    </div>
        <select id="rightValues" size="5" multiple>
            <c:forEach var="sponsor" items="${facade.sponsors}">
				<option value="${sponsor.id}">${sponsor.name}</option>
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
	<input type="submit" name="Save">
	<button type="button" onclick="window.location='manage-greyhounds';return false;">Cancel</button>
</div>
</form>

</div>
</body>
</html>
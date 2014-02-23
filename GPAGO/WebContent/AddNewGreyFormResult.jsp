<!-- Creates an alert to show the results of an image add attempt.
	 Then redirects to back to the AddNewGreyForm page so more additions can be made. -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result of AddNewGreyForm</title>
</head>
    <body> 
        <div id="result">
            <script type="text/javascript">
            window.location = 'http://localhost:8080/GPAGO/AddNewGreyForm.jsp';
            alert('${requestScope["message"]}');            
        	</script>            
        </div>      
    </body>
</html>
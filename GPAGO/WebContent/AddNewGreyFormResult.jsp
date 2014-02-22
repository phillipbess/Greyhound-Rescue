<!-- This page is temporary.  Will eventually be replaced by notification on AddNewGreyForm page.
	 Currently creates a new page to show the results of an image add attempt. -->

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
            alert('${requestScope["message"]}');
        	</script>            
        </div>      
    </body>
</html>
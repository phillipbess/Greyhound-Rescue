<!-- This file is currently placed in WebContent folder for
	 ease of access.  It should eventually be moved to jps
	 subfolder for security. -->

<!-- This form allows the user to select and submit a new image of a grey.
	 The destination folder is currently set to C:/uploads.  If the folder
	 does not exist, it will be created.
	 It uses the FileUploadHandler servlet class to process the file.  
	 The rest of the needed fields to add a new grey will be added to this page.
	 Then the submit button can be used to process the image and add the grey to the database.  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Grey Form</title>
</head>
    <body> 
        <div>
            <h3> Choose File to Upload in Server </h3>
            <form action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">
                <input type="file" name="file" />
                <input type="submit" value="upload" />
            </form>          
        </div>      
    </body>
</html>

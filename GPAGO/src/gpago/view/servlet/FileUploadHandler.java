package gpago.view.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Class is called from AddNewGreyForm jsp page to process adding an image to the server.
 * Currently outputs result to AddNewGreyFormResult.  Will eventually output to notification.
 */

@WebServlet("/upload/*")
public class FileUploadHandler extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:/uploads";
  
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        //process only if its multipart content
        if(org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload.isMultipartContent(request)){
            try {
                List<org.apache.tomcat.util.http.fileupload.FileItem> multiparts = new org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload(
                                         new org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory()).parseRequest(request);
              
                for(org.apache.tomcat.util.http.fileupload.FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        new File(UPLOAD_DIRECTORY).mkdir();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }
           
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully to "+UPLOAD_DIRECTORY);
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
         
        }else{
            request.setAttribute("message",
                                 "Sorry this Servlet only handles file upload request");
        }
    
        request.getRequestDispatcher("/AddNewGreyFormResult.jsp").forward(request, response);
     
    }  
}

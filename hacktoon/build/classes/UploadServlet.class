

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=UTF-8");
		
		try (PrintWriter out = response.getWriter()){
			
			Part part = request.getPart("file");
			
			String fileName = part.getSubmittedFileName();
			
			System.out.println("The file name of the image is "+fileName);
			
			String path = getServletContext().getRealPath("/files"+File.separator+fileName);
			
			InputStream is = part.getInputStream();
			
			boolean succs = uploadFile(is, path);
			
			if(succs) {
				
				System.out.println("the file is uploaded to "+ path);
				
				response.sendRedirect("Posting.jsp");
				
			}
			
			
			
		}
		
		
		
		
	}
	
	public boolean uploadFile(InputStream is, String path) {
		
		boolean test = false;
		try {
			
			byte[] byt = new byte[is.available()];
			
			is.read(byt);
			
			FileOutputStream fops = new FileOutputStream(path);
			
			
			
			fops.write(byt);
			
			fops.flush();
			
			fops.close();
			
			test = true;
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return test;
		
	}

}

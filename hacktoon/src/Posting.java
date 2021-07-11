
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Posting extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	String name;
	
	String title;

	String description;
	
	String image;
	
	String imageLink;
	
	public static void main(String[] args) {
		
		
		
	}


	private List<String> Title = new ArrayList<String>();
	
	private List<String> Description = new ArrayList<String>();
	
	private List<String> Name = new ArrayList<String>();
	
	private List<String> Image = new ArrayList<String>();
	
	private List<String> ImageLink = new ArrayList<String>();

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		
		
		name = Login.loginnnnnnnnnname();
		
		
		request.setAttribute("thename",name);

		

		doGet(request, response);

		title = request.getParameter("title");
		
		switch(title) {
		
		case "Hot Sauce":
			image = "https://www.cartoonistgroup.com/properties/pickles/art_images/cg559dfdc16224e.jpg";
			imageLink = "files/sauce.jpg";
			break;
			
		case "Sleepy":
			image = "https://mk0stylisheve1cal1r6.kinstacdn.com/wp-content/uploads/2020/09/2-700x219.jpg";
			imageLink = "files/sleepy.jpg";
			break;
			
		case "Dog Thoughts":
			image = "https://external-preview.redd.it/FM07Meqzp8cOItlI6EnUP6wjuKys4UGcMQFChUuX8AE.jpg?auto=webp&s=f2bbf6b91c123b1f465a386c0c740daf4a2514eb";
			imageLink = "files/dog.png";
			break;
			
		case "George Clooney":
			image = "https://www.cartoonistgroup.com/properties/pickles/art_images/cg593380ab688a5.jpg";
			imageLink = "files/george.jpg";
			break;
		
		default:
			image = "";
			imageLink = "";
			break;
		
		}

		description = request.getParameter("description");
		
		Name.add(name);

		Title.add(title);
		
		Description.add(description);
		
		Image.add(image);
		
		ImageLink.add(imageLink);

		System.out.println("Username:"+name);

		System.out.println("Title:"+title);

		System.out.println("Description:"+description);

		response.sendRedirect("Posting.jsp");




	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		PrintWriter out = response.getWriter();

		for (int i = 0; i < Title.size() && i < Description.size(); i++) {

			out.println("<div style=\"color:blue;\" class=\"media-body\">\n"
					+ "					<br> <br> <br> <a href=\"#\">"+Name.get(i)+"</a> <br><strong style=\"color:black;\"\n"
					+ "						class=\"text-muted\">"+Title.get(i)+"</strong>\n"
					+ "				</div>\n"
					+ "\n"
					+ "				<div class=\"social-body\">\n"
					+ "					<p>"+Description.get(i)+"</p>\n"
					+ "					<a href=\""+ImageLink.get(i)+"\" target=\"_blank\"><img src=\""+Image.get(i)+"\"\n"
					+ "						class=\"img-responsive\"></a>\n"
					+ "					<div class=\"btn-group\">\n"
					+ "						<button class=\"btn btn-white btn-xs\">\n"
					+ "							<i class=\"fa fa-thumbs-up\"></i> Like this!\n"
					+ "						</button>\n"
					+ "						<button class=\"btn btn-white btn-xs\">\n"
					+ "							<i class=\"fa fa-comments\"></i> Comment\n"
					+ "						</button>\n"
					+ "						<button class=\"btn btn-white btn-xs\">\n"
					+ "							<i class=\"fa fa-share\"></i> Share\n"
					+ "						</button>\n"
					+ "                      <br><br><br>"
					+ "                    <p><p>"
					+ "					</div>\n"
					+ "				</div>");


		
		
		}

	}
	


}
package Crud_o;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Student_Bo.student;
import Student_Dao.Ser_method;

/**
 * Servlet implementation class Handler_sevelet
 */
@WebServlet("/Handler_sevelet")
public class Handler_sevelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Handler_sevelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		
		String name=request.getParameter("name");
		String BOD=request.getParameter("date");
		String address=request.getParameter("address");
		String course=request.getParameter("course");
		
		String oparation=request.getParameter("oparation");
		
		if (oparation.equalsIgnoreCase("insert")) {
			student ob=new student();
			ob.setName(name);
			ob.setBOD(BOD);
			ob.setAddress(address);
			ob.setCourse(course);
			
			int status=Ser_method.insert(ob);
			
			if (status>0) {
				pw.print("data inserted...");
				response.sendRedirect("StudentdataFetch.jsp");
				
			} else {
				pw.print("data not inserted...");
			}
			
			} 
		    else if(oparation.equalsIgnoreCase("delete")){
		    	String id1=request.getParameter("id");
		    	int id=Integer.parseInt(id1);
		    	
		    	 int result=Ser_method.delete(id);
		    	 if (result>0) {
					response.sendRedirect("StudentdataFetch.jsp");
				} else {
                  pw.print("Somthing want to wrong..!");
				}
		    }else if(oparation.equalsIgnoreCase("editform")) {
		    	RequestDispatcher rd=request.getRequestDispatcher("Update.jsp");
		    	rd.forward(request, response);

		    	
		    }else if(oparation.equalsIgnoreCase("update")) {
		    	student ob=new student();
		    	String id=request.getParameter("id");
		    	ob.setId(Integer.parseInt(id));
		    	ob.setName(request.getParameter("name"));
		    	ob.setBOD(request.getParameter("date"));
		    	ob.setAddress(request.getParameter("address"));
		    	ob.setCourse(request.getParameter("course"));
		    	
		    	int result=Ser_method.update(ob);
		    	if (result>0) {
		    		RequestDispatcher rd=request.getRequestDispatcher("StudentdataFetch.jsp");
			    	rd.forward(request, response);
					
				} else {
						pw.print("data not be update...");
				}
		    }
		    else if(oparation.equalsIgnoreCase("Search")){
		    	String id=request.getParameter("id");
		    	int id1=Integer.parseInt(id);
		    	RequestDispatcher rd=request.getRequestDispatcher("Search.jsp");
		    	rd.forward(request, response);
		    	
		    		
		    }
		    else  {
		    	response.sendRedirect("Index.jsp");
		    }
		   
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
	}

}

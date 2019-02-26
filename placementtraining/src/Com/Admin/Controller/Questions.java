package Com.Admin.Controller;

import Com.Admin.Dao.Admin_Questions_Dao;
import Com.Admin.Modal.Questions_Beam;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addQuestions")
public class Questions extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String categoryname = request.getParameter("categoryname");
			String str = request.getParameter("category_topic");
			String categorytopic = str.toLowerCase();
			String[] category = request.getParameterValues("category");
			String[] categorytype = request.getParameterValues("categorytype");
			String[] option = request.getParameterValues("option");
			String[] question = request.getParameterValues("question");
			String[] formula_ans = request.getParameterValues("formula_ans");
			String[] shortcut_ans = request.getParameterValues("shortcut_ans");
			String[] option1 = request.getParameterValues("option1");
			String[] option2 = request.getParameterValues("option2");
			String[] option3 = request.getParameterValues("option3");
			String[] option4 = request.getParameterValues("option4");
			
			ArrayList<Questions_Beam> list = new ArrayList<>(); 

		/*	for(int index=0; index < question.length; index++) {	
			   list.add(new Questions_Beam(category[index], categorytype[index], option[index], question[index],
					   formula_ans[index], shortcut_ans[index], option1[index], option2[index], option3[index], 
					   option4[index]));	
			   
			}*/
			//Admin_Questions_Dao obj = new Admin_Questions_Dao();
			
			try {
				Admin_Questions_Dao.addQuestions(list, categorytopic);
			} 
			catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	
}

package Com.Admin.Dao;

import Com.Admin.Controller.Questions;

import java.sql.*;
import java.util.ArrayList;

import Com.Admin.Modal.Questions_Beam;
import Common.DBConnection;

public class Admin_Questions_Dao {
	
	public static void addQuestions(ArrayList<Questions_Beam> list , String categorytopic) throws ClassNotFoundException, SQLException {
		Connection con = null;
		con = (Connection) DBConnection.getConnection();
		PreparedStatement stmt = null;
		
		try {
			for (int index=0; index < list.size(); index++) {
				
				 Questions_Beam data = list.get(index);	
				 
			     stmt = con.prepareStatement("insert into problems on trains values(?,?,?,?,?,?,?,?,?,?)");
			     stmt.setString(1, data.category);
			     stmt.setString(2, data.categorytype);
			     stmt.setString(3, data.option);
			     stmt.setString(4, data.question);
			     stmt.setString(5, data.formula_ans);
			     stmt.setString(6, data.shortcut_ans);
			     stmt.setString(7, data.option1);
			     stmt.setString(8, data.option2);
			     stmt.setString(9, data.option3);
			     stmt.setString(10, data.option4);
			     int result = stmt.executeUpdate();
			
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}

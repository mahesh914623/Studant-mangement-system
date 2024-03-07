package Student_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Student_Bo.student;

public class Ser_method {
   public static Connection geConnection() {
	   Connection con=null;
	   try {
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   
		   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Student_management_System","root","Pass@123");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return con;
}
   public static int  insert(student ob) {
	   int status=0;
	   Connection con=Ser_method.geConnection();
	   String sql="insert into  Student_info (name,BOD,address,course) values (?,?,?,?)";
	   try {
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1, ob.getName());
		   ps.setString(2, ob.getBOD());
		   ps.setString(3, ob.getAddress());
		   ps.setString(4, ob.getCourse());
		   
		   status=ps.executeUpdate();
		
	} catch (Exception e) {
		
	}
	   return status;	
    }
   
   public static List<student> datafetch(){
	   List<student> al=new ArrayList<student>();
	   try 
	   {
		Connection con=Ser_method.geConnection();
		String sql="select * from  Student_info";
		 PreparedStatement ps=con.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		  while (rs.next()) 
		  {
			  student ob =new student();
			  ob.setId(rs.getInt(1));
			  ob.setName(rs.getString(2));
			  ob.setBOD(rs.getString(3));
			  ob.setAddress(rs.getString(4));
			  ob.setCourse(rs.getString(5));
			  
			  al.add(ob);
			  
		  }
		
	   } 
	   catch (Exception e)
	   {
		   e.printStackTrace();
	   }
	   
	   return al;
   }
   public static int delete( int id) {
	   int result=0;
	   try {
		Connection con=Ser_method.geConnection();
		String sql="delete from Student_info where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,id);
		
		result=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	   return result;
	  	
   }
	public static student edit(int id) {
		student ob=new student();
		try {
			Connection con=Ser_method.geConnection();
			String sql="select * from Student_info where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				
				ob.setId(rs.getInt(1));
				ob.setName(rs.getString(2));
				ob.setBOD(rs.getString(3));
				ob.setAddress(rs.getString(4));
				ob.setCourse(rs.getString(5));	
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ob;	
	} 
	
	public static int update(student ob) {
		int result=0;
		try {
			Connection con=Ser_method.geConnection();
			String sql="update Student_info set name=?,BOD=?,address=?,course=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, ob.getName());
			ps.setString(2, ob.getBOD());
			ps.setString(3, ob.getAddress());
			ps.setString(4, ob.getCourse());
			ps.setInt(5, ob.getId());
			result=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	
	}
	public static student Search(int id) {
		student ob=new student();
		try {
			Connection con=Ser_method.geConnection();
			String sql="select * from Student_info where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				
				ob.setId(rs.getInt(1));
				ob.setName(rs.getString(2));
				ob.setBOD(rs.getString(3));
				ob.setAddress(rs.getString(4));
				ob.setCourse(rs.getString(5));	
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ob;	
		
	}
	
	
	
    
}

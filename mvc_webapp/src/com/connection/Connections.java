package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Connections{  
public static void insertData(String userName, String email)
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
	         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mvc_schema","root","shruby0711");  
			Statement stmt=con.createStatement();  
			stmt.execute("insert into userlist values('"+2+"','"+userName+"','"+userName+"','"+email+"')");  
			con.close();  
			}catch(Exception e){ System.out.println(e);}  
			}  
}

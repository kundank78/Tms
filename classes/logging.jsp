<%@page import="java.sql.*" %>

<%

class Logging 
	{
    
		public void logEvent(String username,String action ,String where,String ip )
			{
        
			try
			{		
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","asdf");
				Statement st=con.createStatement();
				
				st.executeQuery("insert into tms_log values('"+username+"','"+action+"','"+where+"',sysdate,'"+ip+"')");
			}
			catch(Exception e)
            {
				System.out.println(e.getMessage());
			}   
            
			}     
	}
%>
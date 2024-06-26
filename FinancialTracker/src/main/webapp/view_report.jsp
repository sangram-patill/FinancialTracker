<%-- 
    Document   : view_report
    Created on : 12 May, 2023, 5:59:06 PM
    Author     : Aditya
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="ISO-8859-1">
<title>Financial Tracker-Report</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="assets/images/Rupee Logo.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous">
	
</script>
<!-- FontAwesome JS-->
<script defer src="assets/plugins/fontawesome/js/all.min.js"></script>
<!-- App CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/portal.css">
</head>
    <body>
       <%
       
       String event=request.getParameter("submit");
		
       //total income
       if(event!=null)
       {
           
            if(event.equals("Total Income"))
            {
            	String UserID = request.getParameter("UserID");
                Connection cn = null;
                try 
                {
                	 
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\fullincomereport.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("USER_ID",UserID);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();  
                       
           }
	    } 
    	
    	
       //datewise income
       if(event.equals("Total Datewise Income"))
       {
    	   
    	  String UserID = request.getParameter("UserID");
    	   
          String date1=request.getParameter("from-date");
          
          String date2=request.getParameter("to-date");
     
          Connection cn = null;
          try 
          {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");
      
          } 
          catch (Exception ex) 
          {
            ex.printStackTrace();
          }
          
            File reportFile = new File(application.getRealPath("reports\\datewiseincomereport.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("from_date", date1);
            parameters.put("to_date", date2);
            parameters.put("USER_ID",UserID);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close(); 
       }
    	
       
       //full expense
       if(event!=null)
       {
           
            if(event.equals("Total Expense"))
            {
            	String UserID = request.getParameter("UserID");
                Connection cn = null;
                try 
                {
                	 
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\fullexpensereport.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("USER_ID",UserID);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();  
                       
           }
	    }
       
       
     //datewise expense
       if(event.equals("Total Datewise Expense"))
       {
    	   
    	  String UserID = request.getParameter("UserID");
    	   
          String date1=request.getParameter("from-date");
          
          String date2=request.getParameter("to-date");
     
          Connection cn = null;
          try 
          {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");
      
          } 
          catch (Exception ex) 
          {
            ex.printStackTrace();
          }
          
            File reportFile = new File(application.getRealPath("reports\\datewiseexpensereport.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("from_date", date1);
            parameters.put("to_date", date2);
            parameters.put("USER_ID",UserID);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close(); 
       }

     
       //total investment
       if(event!=null)
       {
           
            if(event.equals("Total Investment"))
            {
            	String UserID = request.getParameter("UserID");
                Connection cn = null;
                try 
                {
                	 
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\fullinvestmentreport.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("USER_ID",UserID);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();  
                       
           }
	    } 
       
       //datewise investment
       if(event.equals("Total Datewise Investment"))
       {
    	   
    	  String UserID = request.getParameter("UserID");
    	   
          String date1=request.getParameter("from-date");
          
          String date2=request.getParameter("to-date");
     
          Connection cn = null;
          try 
          {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");
      
          } 
          catch (Exception ex) 
          {
            ex.printStackTrace();
          }
          
            File reportFile = new File(application.getRealPath("reports\\datewiseinvestmentreport.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("from_date", date1);
            parameters.put("to_date", date2);
            parameters.put("USER_ID",UserID);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close(); 
       }
       
       
       
       //total loan
       if(event!=null)
       {
           
            if(event.equals("Total Loan"))
            {
            	String UserID = request.getParameter("UserID");
                Connection cn = null;
                try 
                {
                	 
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\fullloanreport.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("USER_ID",UserID);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();  
                       
           }
	    }
       
       
     //datewise loan
       if(event.equals("Total Datewise Loan"))
       {
    	   
    	  String UserID = request.getParameter("UserID");
    	   
          String date1=request.getParameter("from-date");
          
          String date2=request.getParameter("to-date");
     
          Connection cn = null;
          try 
          {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");
      
          } 
          catch (Exception ex) 
          {
            ex.printStackTrace();
          }
          
            File reportFile = new File(application.getRealPath("reports\\datewiseloanreport.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("from_date", date1);
            parameters.put("to_date", date2);
            parameters.put("USER_ID",UserID);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close(); 
       }
     

     
     //total SIP
       if(event!=null)
       {
           
            if(event.equals("Total SIP"))
            {
            	String UserID = request.getParameter("UserID");
                Connection cn = null;
                try 
                {
                	 
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\fullsipreport.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("USER_ID",UserID);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();  
                       
           }
	    }
     
     
     //datewise sip
       if(event.equals("Total Datewise SIP"))
       {
    	   
    	  String UserID = request.getParameter("UserID");
    	   
          String date1=request.getParameter("from-date");
          
          String date2=request.getParameter("to-date");
     
          Connection cn = null;
          try 
          {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");
      
          } 
          catch (Exception ex) 
          {
            ex.printStackTrace();
          }
          
            File reportFile = new File(application.getRealPath("reports\\datewisesipreport.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("from_date", date1);
            parameters.put("to_date", date2);
            parameters.put("USER_ID",UserID);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close(); 
       }
       
     
       //total EMI
       if(event!=null)
       {
           
            if(event.equals("Total EMI"))
            {
            	String UserID = request.getParameter("UserID");
                Connection cn = null;
                try 
                {
                	 
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("reports\\fullemireport.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("USER_ID",UserID);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();  
                       
           }
	    }
       
     //datewise emi
       if(event.equals("Total Datewise EMI"))
       {
    	   
    	  String UserID = request.getParameter("UserID");
    	   
          String date1=request.getParameter("from-date");
          
          String date2=request.getParameter("to-date");
     
          Connection cn = null;
          try 
          {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/financialtracker","root","root");
      
          } 
          catch (Exception ex) 
          {
            ex.printStackTrace();
          }
          
            File reportFile = new File(application.getRealPath("reports\\datewiseemireport.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("from_date", date1);
            parameters.put("to_date", date2);
            parameters.put("USER_ID",UserID);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close(); 
       }
        %>
    </body>
</html>


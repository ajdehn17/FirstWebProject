<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable.html</title>
</head>
<body style="background-color: black; color: rgb(0, 0, 0);"
alink="#ee0000" link="#0000ee" vlink="#551a8b">



	<span style="color: white;"> <% out.println("Hello " + request.getParameter("name") +".  Here is your table:"); %></span><br>
	
	<table style="text-align: left; width: 100%; color: white;" border="1" cellpadding="2"
		cellspacing="2">
	<tbody>
	
	<% 
	int nRows = Integer.parseInt(request.getParameter("numRows"));
	int nCols = Integer.parseInt(request.getParameter("numCol"));
	if(nRows<=0)
	{
		StringBuffer s = new StringBuffer("");
		s.append("classexercise.jsp");
		s.append("?name="+request.getParameter("name"));
		s.append("&column="+ nCols);
		s.append("&row="+nRows);
		response.sendRedirect(s.toString());
		
	}
	else if(nCols<=0)
	{
		StringBuffer s = new StringBuffer("");
		s.append("classexercise.jsp");
		s.append("?name="+request.getParameter("name"));
		s.append("&column="+ nCols);
		s.append("&row="+nRows);
		response.sendRedirect(s.toString());
	}
	else{
	for(int numRows = 1; numRows<= nRows; numRows++)
	{
		out.println("<tr>");
		for(int numCol = 1; numCol<= nCols; numCol++)
		{
			out.println("<td> " + numRows + ", " + numCol + " </td>");
			
		}
		out.println("</tr>");
	}
	}
	
	/**
	out.println("</tbody>");
	out.println("</table>");
	out.println("<br>");
	out.println("</body>");
	out.println("</html>");
	*/
	%>



</tbody>
</table>
<br>
</body>
</html>


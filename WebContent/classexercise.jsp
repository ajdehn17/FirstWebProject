<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% String message = "Please enter the dimensions of the desired table below:";%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexercise.html</title>
</head>
<body>
<%
	String name = request.getParameter("name");

	if(name==null)
	{
		out.println("Please enter the dimensions of the desired table below:"); 
	}
	else
	{
		int rows = Integer.parseInt(request.getParameter("row"));
		int cols = Integer.parseInt(request.getParameter("column"));
		
		if(rows<=0)
		{
			//
			out.println("Hello: " + name +", PLEASE PROVIDE A Row VALUE >=1");
		}
		if(cols<=0)
		{
			out.println("Hello: " + name +", PLEASE PROVIDE A Column VALUE >=1");		}
	}

%>
&nbsp;
<br>
<br>
&nbsp;
<script type="text/javascript">
	var msg = request.getParameter("message");
	alert(msg);
</script>

<%
		
		
		%><br>
<form name="myForm" action="createtable.jsp"><br>
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name</td>
<td style="vertical-align: top;"><input name="name"></td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows</td>
<td style="vertical-align: top;"><input value="1" name="numRows"></td>

</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns</td>
<td style="vertical-align: top;"><input value="1" name="numCol"></td>
</tr>
<tr>
<td style="vertical-align: top;"><input value="Submit"
type="submit"></td>
<td style="vertical-align: top;"><input value="Reset"
type="reset"></td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
<br>
</body>
</html>

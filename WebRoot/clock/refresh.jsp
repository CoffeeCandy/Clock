<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'refresh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <script type="text/javascript">
    var originalTime=5;
    function initTime(){
    	
    	originalTime=Date.now()/1000;
    	
    }
    	
   function getclock(){
	 if(originalTime==0){
		 window.location = "/Clock/index.jsp";
	 }
	 var mention="this page will jump after ";
	 
	   document.getElementById("time").innerHTML= mention+originalTime--+" second";
	   setTimeout('getclock()', 1000);
   }
  
   		
   		
   </script>
  <body onload="getclock();">
 
   <span id="time"></span> 
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style type="text/css">
        .Header {CLEAR: both; DISPLAY: block; FLOAT: left; BACKGROUND-IMAGE: url(<%=path %>/img/reservation01.jpg); WIDTH: 972px; POSITION: relative; HEIGHT: 130px}
        .Header .HeaderTop {HEIGHT: 90px}
    </style>
    <script type="text/javascript">
//         function myXinxi()
//         {
//             <s:if test="#session.user==null">
//
//             </s:if>
            
//             <s:else>
<%--                 var url="<%=path %>/user/userLogin/userXinxi.jsp"; --%>
//                 var n="";
//                 var w="480px";
//                 var h="500px";
//                 var s="resizable:no;help:no;status:no;scroll:yes";
// 			    openWin(url,n,w,h,s);
//             </s:else>
//         }
        
//         function keshiAll()
//         {
<%--              var url="<%=path %>/keshiAll.action"; --%>
// 		     window.open(url,"_self");
//         }
        function yuyueAllMy()
        {
            <s:if test="#session.yisheng==null">
	                  alert("Login First");
            </s:if>
            
            <s:else>
                 var url="<%=path %>/yuyueYisheng.action";
			     window.open(url,"_self");
            </s:else>
        }
        
    </script>
  </head>
  
  <body>
	 <div align="center" class="Wrapper">
		 <div class="Header">
				<div class="HeaderTop">
				    <br/>
				    <font size="22px;"></font>
				</div>
				<div id="Menu" class="Menu">
					<div id="fstMenu" class="fstMenu"></div>
					<div class="secMenu">
						<span id="secMenu0" class="secMenu-center">
						     <a href="<%=path %>/user/default.jsp">Homepage</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

						     <a href="#" onclick="yuyueAllMy()">My Appointment</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a target="_blank" href="<%=path %>/login.jsp">Enter Admin Side</a>
						</span>
					</div>
				</div>
		    </div>
        </div>	
  </body>
</html>

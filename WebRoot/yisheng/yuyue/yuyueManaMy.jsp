<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" src="<%=path %>/js/popup.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
       function yuyueDelMy(id)
       {
            var url="<%=path %>/yuyueDelYisheng.action?id="+id;
            window.location.href=url;
       }
    </script>
  </head>
  
<body>

<jsp:include flush="true" page="/yisheng/inc/incTop.jsp"></jsp:include>    
<!-- head-->	
	
	
	
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="navigation" class="naivgation">
				<jsp:include flush="true" page="/yisheng/inc/incLeft.jsp"></jsp:include> 
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer770">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">My Appointment</div>
					</div>
					<div class="Slot">
						<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
							<tr align="center" bgcolor="#FAFAF1" height="22">
								<td width="15%">Appointment Time</td>
								<td width="15%">Patients</td>
								<td width="60%">Comments</td>
								<td width="10%">Operate</td>
					        </tr>	
							<s:iterator value="#request.yuyueList" id="yuyue">
							<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyue.shijian"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyue.userName"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <s:property value="#yuyue.beizhu"/>
								</td>
								<td bgcolor="#FFFFFF" align="center">
									 <a href="#" onclick="yuyueDelMy(<s:property value="#yuyue.id"/>)">cancel</a>
								</td>
							</tr>
							</s:iterator>
						</table>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/yisheng/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>

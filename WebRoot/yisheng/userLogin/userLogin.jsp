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
	<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	<script type="text/javascript">
	        function login()
	        {
	           if(document.userLogin.yishengName.value=="")
	           {
	               alert("plz input account");
	               return;
	           }
	           if(document.userLogin.yishengPwd.value=="")
	           {
	               alert("plz input password");
	               return;
	           }
	           document.userLogin.submit();
	        }
	        
	</script>
  </head>
  
  <body>
       <s:if test="#session.yisheng==null">
			<form action="<%=path %>/yishengLogin.action" name="userLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="10"></td>
			          </tr>
			          <tr>
			            <td align="right" width="31%" height="30" style="font-size: 11px;">Account：</td>
			            <td align="left" width="69%"><input class="input" style="width: 100px;" name="yishengName" type="text" /></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">Password：</td>
			            <td align="left"><input class="input" type="password" style="width: 100px;" name="yishengPwd"/></td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="10"><font color="red"><s:property value="#request.error"/></font></td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="30">
			               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			               <input type="button" value="登  录" onclick="login()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
						   &nbsp;
<!--
			            </td>
			          </tr>
			      </table>
		    </form>
	   </s:if>
	   <s:else>
	        <br/>
		     欢迎您：<s:property value="#session.yisheng.yishengName"/>
		    <br/><br/><br/>
	   </s:else>
  </body>
</html>

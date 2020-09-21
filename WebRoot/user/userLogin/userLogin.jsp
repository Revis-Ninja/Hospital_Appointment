<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	<script type="text/javascript">
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("plz input account name");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("plz input password");
	               return;
	           }
	           document.userLogin.submit();
	        }
	        
	</script>
  </head>
  
  <body>
       <s:if test="#session.user==null">
			<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="10"></td>
			          </tr>
			          <tr>
			            <td align="right" width="31%" height="30" style="font-size: 11px;">account：</td>
			            <td align="left" width="69%"><input class="input" style="width: 100px;" name="userName" type="text" /></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">password：</td>
			            <td align="left"><input class="input" type="password" style="width: 100px;" name="userPw"/></td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="10"><font color="red"><s:property value="#request.error"/></font></td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="30">
			               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			               <input type="button" value="sign in" onclick="login()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
						   &nbsp;
						   <input type="button" value="sign up" onclick="reg()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
			            </td>
			          </tr>
			      </table>
		    </form>
	   </s:if>
	   <s:else>
	        <br/>
		     welcome：<s:property value="#session.user.userName"/> &nbsp;&nbsp;&nbsp;&nbsp;
		    <a href="<%=path %>/userLogout.action">exit</a> &nbsp;&nbsp;&nbsp;&nbsp;
		    <br/><br/><br/>
	   </s:else>
  </body>
</html>

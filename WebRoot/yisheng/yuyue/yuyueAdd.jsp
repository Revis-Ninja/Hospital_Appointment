<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        
        <link rel="stylesheet" href="<%=path %>/jquery/ui.datepicker.css" type="text/css" media="screen"  charset="utf-8" />
	
		<script src="<%=path %>/jquery/jquery-1.2.6.js" type="text/javascript" charset="utf-8"></script>	
		<script src="<%=path %>/jquery/ui.datepicker.js" type="text/javascript" charset="utf-8"></script>	
		<script src="<%=path %>/jquery/ui.datepicker-zh-CN.js" type="text/javascript" charset="utf-8"></script>	
        
        <script language="javascript">
           function c()
           {
              if(document.formAdd.shijian.value=="")
              {
                 alert("plz input appointment time");
                 return false;
              }
              if(document.formAdd.beizhu.value=="")
              {
                 alert("plz input comments");
                 return false;
              }
              document.formAdd.submit();
           }
           
            jQuery(function($){
			$('#datepicker').datepicker({
					yearRange: '1900:2099',
					showOn: 'both',
					buttonImage: '<%=path %>/jquery/calendar.gif',
					buttonImageOnly: true,
					showButtonPanel: true
				});	
				
			});
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/yuyueAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="20%" bgcolor="#FFFFFF" align="left">
						                 appointment date:
						    </td>
						    <td width="80%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="datepicker" name="shijian" value="" readonly="readonly"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="20%" bgcolor="#FFFFFF" align="left">
						          comments：
						    </td>
						    <td width="80%" bgcolor="#FFFFFF" align="left">
						        <input name="beizhu" style="width: 250px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="100%" bgcolor="#FFFFFF" align="left" colspan="2">
						       <input type="hidden" name="yishengId" value="<%=request.getParameter("yishengId") %>"/>
						       <input type="button" value="submit" onclick="c()"/>&nbsp;
						       <input type="reset" value="reset"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>

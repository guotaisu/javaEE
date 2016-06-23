<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script type="text/javascript">
	function validate() {
		var username = document.getElementById("username").value;
		var pwd = document.getElementById("password").value;
		var repwd = document.getElementById("password2").value;

		if(username=="") {
			alert("用户名不能为空");
			return false;
		}
			
		if(pwd=="" || repwd=="") {
			alert("密码或确认密码不能为空");
			return false;
		}
		
		if(pwd!=repwd){
			alert("两次密码输入必须一致");
			return false;
		}
		
		if(pwd.length<6){
			alert("密码长度6-8位");
			return false;
		}
			
		return true;
	}
		
	function regist() {
		if(validate()) {
			document.myform.submit();
		}
			
	}
</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<form name="myform" method="post" action="register.action">
	<table border="0" cellpadding="0" cellspacing="0" align="center" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="left" height="25" bgcolor="#FFFFFF">
			<font color="BLACK"><b>新用户注册</b></font></td>
		</tr>
		<tr>
			<td width="40%"><b>用户名</b>：<br></td>
			<td width="60%">
			<input maxLength="16" size="32" name="user.username" id="username" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr>
			<td width="40%"><b>密码</b>：<br>
			</td>
			<td width="60%">
			<input type="password" maxLength="8" size="32" name="user.password" id="password" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr>
			<td width="40%"><b>重复密码</b>：<br>
			</td>
			<td>
			<input type="password" maxLength="8" size="32" name="user.password2" id="password2" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr>
			<td><b>用户权限</b>：</td>
			<td>
				<input type="text" size="32" maxlength="32" name="user.role"  style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td><b>真实姓名</b>：</td>
			<td>
				<input type="text" size="32" maxlength="32" name="user.realname"  style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td><b>联系地址</b>：</td>
			<td>
			<input type="text" size="32" maxlength="32" name="user.address" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td><b>联系方式</b>：</td>
			<td>
			<input type="text" size="32" maxlength="16" name="user.tel" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td><b>Email地址</b>：<br></td>
			<td>
				<input maxLength="50" size="32" maxlength="32" name="user.email" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td valign="middle" colspan="2" align="center">
				<input type="button" value="注 册" onclick="regist()">&nbsp;&nbsp;&nbsp;
				<input type="reset" name="reset" value="清 除">
			</td>
		</tr>
	</table>
</form>
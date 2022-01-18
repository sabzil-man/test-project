<!-- #include virtual="/include/GlobalFunction.asp" -->
<%
	FailReason = Request("FailReason")

	If SSO_Use_Set = 1 Then
		'If FailReason = 0 then
			CheckSSO
		'End If 
	End If

Dim emp_no   : emp_no   = Request.Cookies("intra")("emp_no") 
Dim emp_nm   : emp_nm   = Request.Cookies("intra")("emp_nm") 
Dim dept_cd  : dept_cd  = Request.Cookies("intra")("dept_cd")
Dim dept_nm : dept_nm	= Request.Cookies("intra")("dept_nm")

'Response.Write "test" & emp_no
If emp_no="" Then
	Call ScriptFunction("top.location.reload('http://intra.jautour.com');")
	response.End
End if

%>
<HTML><HEAD><TITLE><%= Site_TitleName %></TITLE>
<META http-equiv=Content-Type content="text/html; charset=ks_c_5601-1987">
<META http-equiv=Pragma content=no-cache>
<LINK href="login_img/content.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.2963" name=GENERATOR>
<script language="JavaScript">
<!--
	function CheckSubmit()
	{
		var myform = document.login;

		if(myform.UserID.value == ""){
			alert("아이디를 입력하세요.");
			myform.UserID.focus();
			return false;
		}
		if(myform.Passwd.value == ""){
			alert("비밀번호를 입력하세요.");
			myform.Passwd.focus();
			return false;
		}
		myform.bwidth.value = screen.width;
	}
//-->
</script>
</HEAD>
	<BODY leftMargin=0 topMargin=0 >
		<TABLE width="100%" height="100%" border=0 cellPadding=0 cellSpacing=0>
			<TR class=logintable>
				<TD align="center" vAlign=middle>
				<!--TABLE height=306 cellSpacing=0 cellPadding=0 width=677 border=0>
						
						<TR>
							<TD vAlign=top align=left width=29 height=127><IMG height=127 src="login_img/img_01_01.gif" width=29></TD>
							<TD vAlign=top align=left width=78 height=127><IMG height=127 src="login_img/img_01_02.gif" width=78></TD>
							<TD width=243 background=login_img/img_01_03bg.gif  height=127>&nbsp;</TD>
							<TD width=62 height=127><IMG height=127  src="login_img/img_01_04.gif" width=62></TD>
							<TD width=158 height=127><IMG height=127  src="login_img/img_01_05.gif" width=158></TD>
							<TD width=69 height=127><IMG height=127  src="login_img/img_01_06.gif" width=69></TD>
							<TD width=38 height=127><IMG height=127  src="login_img/img_01_07.gif" width=38></TD></TR>
						<TR>
							<TD vAlign=top align=left width=29 height=17><IMG height=17 src="login_img/img_02_01.gif" width=29></TD>
							<TD vAlign=top align=left width=78 height=17><IMG height=17 src="login_img/img_02_02.gif" width=78></TD>
							<TD vAlign=top align=left width=243 height=17><IMG height=17 src="login_img/img_02_03.gif" width=243></TD>
							<TD width=62 height=17><IMG src="login_img/img_02_04.gif"></TD>
							<TD width=158 height=17><IMG  src="login_img/img_02_05.gif"></TD>
							<TD width=69 background=login_img/img_02_06bg.gif  height=17></TD>
							<TD width=38 background=login_img/img_02_06bg.gif  height=17></TD></TR>
						<TR>
							<TD vAlign=top align=left width=29 height=27><IMG height=27 src="login_img/img_03_01.gif" width=29></TD>
							<TD vAlign=top align=left width=78 height=27><IMG height=27 src="login_img/img_03_02.gif" width=78></TD>
							<TD vAlign=top align=left width=243 height=27><IMG height=27 src="login_img/img_03_03.gif" width=243></TD>
							<TD vAlign=top align=left colSpan=3 height=27 rowSpan=2>							
							<TABLE cellSpacing=0 cellPadding=0 width=289 border=0>
								<!--로그인 부분-->
								<form name="login" method="post" action="login_ok.asp" onSubmit="return CheckSubmit()">
								<input type="hidden" name="bwidth">
									<TR>
										<!--TD width=62 height=27><IMG height=27 src="login_img/img_03_04.gif" width=62></TD>
										<TD vAlign=top align=left width=138  background=login_img/img_03_05bg.gif height=27>
										<!--아뒤-->
										<INPUT type="hidden" class=inpBorder  tabIndex=1 size=18 name="UserID" value="<%=emp_no%>"></TD>
										<!--TD vAlign=top align=left width=89 background=login_img/img_03_05bg.gif height=27>&nbsp;</TD>
									</TR>
									<TR>
										<TD vAlign=top align=left width=62 height=27><IMG  height=27 src="login_img/img_04_04.gif" width=62></TD>
										<TD vAlign=top width=138  background=login_img/img_04_05bg.gif height=27>
										<!--패스-->
										<INPUT type="hidden" class=inpBorder tabIndex=2 type=password size=18 name=Passwd value="<%=emp_no%>"></TD>
										<!--TD vAlign=top align=left width=89 background=login_img/img_04_05bg.gif>
										<!--로긴버튼-->
										<input type="hidden" type=image src="login_img/ico_go.gif" border=0>										
										</TD>
									</TR>
									</form>
								<!--로그인 부분-->
								</TABLE>
							</TD>
							<!--TD width=38 background=login_img/img_03_05bg.gif height=27>&nbsp;</TD></TR>
						<TR>
							<TD vAlign=top align=left width=29 height=27><IMG height=27   src="login_img/img_04_01.gif" width=29></TD>
							<TD vAlign=top align=left width=78 height=27><IMG height=27   src="login_img/img_04_02.gif" width=78></TD>
							<TD vAlign=top align=left width=243 height=27><IMG height=27   src="login_img/img_04_03.gif" width=243></TD>
							<TD width=38 background=login_img/img_04_05bg.gif  height=27>&nbsp;</TD></TR>
						<TR>
							<TD vAlign=top align=left width=29 height=100><IMG height=100  src="login_img/img_05_01.gif" width=29></TD>
							<TD vAlign=top align=left width=78 height=100><IMG height=100  src="login_img/img_05_02.gif" width=78></TD>
							<TD vAlign=top width=243 height=100><FONT size=2><IMG height=100 src="login_img/img_05_03.gif" width=243></FONT></TD>
							<TD vAlign=top align=left width=62 height=100><IMG height=100  src="login_img/img_05_04.gif" width=62></TD>
							<TD vAlign=top align=left width=158 height=100><IMG height=100 src="login_img/img_05_05.gif" width=158></TD>
							<TD vAlign=top align=left width=69 background=login_img/img_05_06bg.gif height=100></TD>
							<TD vAlign=top align=left width=38  background=login_img/img_05_06bg.gif height=100></TD></TR>
						<TR align=left>
							<TD vAlign=top height=8></TD>
							<TD vAlign=top height=8></TD>
							<TD vAlign=top height=8></TD>
							<TD vAlign=top height=8></TD>
							<TD vAlign=top height=8><IMG height=8 src="login_img/img_06_05.gif" width=158></TD>
							<TD vAlign=top height=8><IMG height=8   src="login_img/img_06_06.gif" width=69></TD>
							<TD vAlign=top height=8><IMG height=8 src="login_img/img_06_07.gif"    width=38></TD>
						</TR-->
						
				  </TABLE>			  </TD>
			</TR>
	</TABLE>
	</BODY>	
</HTML>
<%
If emp_no <> "" Then
	Call ScriptFunction("document.login.submit();")
End if
%>
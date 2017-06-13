<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="xianxian.*"%>
<jsp:useBean id="computer" class="xianxian.Calculator" scope="session" />
<HTML>
	<BODY bgcolor=grey>
		<Font size=5> <jsp:setProperty name="computer" property="*" />
		<center>
			<FORM action="jsp.jsp" method=post name=form>
				<Input type="text" name="numberOne"
					value=<jsp:getProperty name="computer" property="numberOne"/>
					size=40/>
					<br/>
				
				<Input type="text" name="numberTwo"
					value=<jsp:getProperty name="computer" property="numberTwo"/>
					size=40>
					<br/>
					<P>请选择运算符</P>
					<Select name="operator" />
					<Option value="+">
						+
						<Option value="-">
							-
							<Option value="*">
								*
								<Option value="/">
									/
								
				</Select>
				<br/>
				=
				<jsp:getProperty name="computer" property="result" />
				<BR>
				<BR/>
				<INPUT TYPE="submit" value="开始计算" name="submit" />
			</FORM>
	</center>
	</BODY>
</HTML>
<%@ page pageEncoding="GB2312" 
	errorPage="errorPage.jsp" 
	import="com.apress.faq.FaqCategories" %>
<html>
<head>
	<title>Java FAQ Welcome Page</title>
</head>
<body>
	<h1>Java FAQ Welcome Page</h1>
	Welcome to the Java FAQ.Click a link below for answers to the given topic.
	<p/>
	<%!
		public String replaceUnderscore(String s) {
			return s.replace(" ", "_");
		}
	%>
	<%
		FaqCategories faq = new FaqCategories();
		String[] categories = faq.getAllCategories();
		for (int i = 0; i < categories.length; i++) {
	%>
	
		<a href="<%=replaceUnderscore(categories[i]) %>.jsp">
			<%=categories[i]%>
		</a>
		<p/>
	
	<%
		}
	%>
	
	<%@ include file="/footer.jsp" %>
	
</body>
</html>
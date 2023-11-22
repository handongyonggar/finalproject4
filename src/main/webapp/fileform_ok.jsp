
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import ="com.crud.*, java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
%>



<html>
<head>
    <title>Title</title>
</head>
<body>
<form >

    <%
        String filename = "";
        int sizeLimit = 15 * 1024 * 1024;

        String realPath = request.getServletContext().getRealPath("upload");
        File dir = new File(realPath);
        if (!dir.exists()) dir.mkdirs();

        MultipartRequest multpartRequest = null;
        multpartRequest = new MultipartRequest(request, realPath,
                sizeLimit, "utf-8",new DefaultFileRenamePolicy());
        filename = multpartRequest.getFilesystemName("img1");
    %>

    파일명: <%=filename%><br />

    <img src="${pageContext.request.contextPath}/upload/<%=filename%>">
</form>
</body>
</html>


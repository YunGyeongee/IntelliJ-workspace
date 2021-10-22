<%--
  Created by IntelliJ IDEA.
  User: YunGyeongKim
  Date: 2021-10-22
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // request, response 사용 가능 --> 자동으로 서블릿으로 바뀌기 때문에 문법상 사용 가능하게 지원됨
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("save.jsp");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    System.out.println("member = " + member);
    memberRepository.save(member);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

    성공

    <ul>
        <li>id=<%=member.getId()%></li>
        <li>username=<%=member.getUsername()%></li>
        <li>age=<%=member.getAge()%></li>
    </ul>

    <a href="/index.html">메인</a>

</body>
</html>

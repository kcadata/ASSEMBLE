<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${contextPath}/">home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${contextPath}/">Home</a></li>
        <li><a href="boardList.do">게시판</a></li>
      </ul>
      
      <c:if test="${empty mvo}">
     <ul class="nav navbar-nav navbar-right">
             <li><a href="${contextPath}/join.do"><span class="glyphicon glyphicon-user">회원가입</span></a></li>
        	 <li><a href="${contextPath}/loginForm.do"><span class="glyphicon glyphicon-log-in">로그인</span></a></li>
      </ul>
      </c:if>
      
      <c:if test="${not empty mvo}">
      <ul class="nav navbar-nav navbar-right">
             <li><a href="${contextPath}/updateForm.do">
             <span class="glyphicon glyphicon-wrench">회원정보수정</span></a></li>
        	 <li><a href="${contextPath}/imageForm.do"><span class="glyphicon glyphicon-picture">프로필사진등록</span></a></li>
        	 <li><a href="${contextPath}/logout.do"><span class="glyphicon glyphicon-log-out">로그아웃</a></span> </li>
          	
          	
          	<li>
          		<img class="img-circle" src="${contextPath}/resources/images/person.png" style="width: 50px; height: 50px;">
          		${mvo.user_nick}님 Welcome.
          	</li>
          
      </ul>
      </c:if>
      
    </div>
  </div>
</nav>












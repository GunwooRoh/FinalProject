<<<<<<< HEAD
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="vo" items="${boardlist}">
<a href="<c:url value='/myBoard/teamNotice'/>" class="dropdown-item">
  <i class="bi bi-pin-angle-fill me-2"></i>${vo.MBoardName}
</a>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="vo" items="${boardlist}">
<a href="<c:url value='/myBoard/teamNotice'/>" class="dropdown-item">
  <i class="bi bi-pin-angle-fill me-2"></i>${vo.MBoardName}
</a>
>>>>>>> branch 'main' of https://github.com/GunwooRoh/FinalProject.git
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="vo" items="${boardlist}">
<a href="<c:url value='/myBoard/teamNotice'/>" class="dropdown-item">
  <i class="bi bi-pin-angle-fill me-2"></i>${vo.MBoardName}
</a>
>>>>>>> branch 'main' of https://github.com/GunwooRoh/FinalProject.git
</c:forEach>
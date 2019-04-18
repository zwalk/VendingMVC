<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<c:import url ="/WEB-INF/jsp/header.jsp">
</c:import>

<meta charset="UTF-8">

<link rel="stylesheet" href="css/detail.css" />

<div id="productDetailContainer">
	<div class="productImgContainer">
		 	<c:url var="productImageUrl" value="img/${product.imageName}"/>
		 		<img class="productImageUrl" src="${productImageUrl}"/>
	 	</div>
	 	
	 <div id="productInfo">
	 	<c:choose>
 			<c:when test="${product.topSeller}">
 			<h3 class = "name"><c:out value="${product.name}"/> <span class ="bestSeller">BEST SELLER!</span></h3>
 			</c:when>
 			<c:otherwise>
  			<h3 class = "name"><c:out value="${product.name}"/></h3>
			</c:otherwise>
  		</c:choose>
	 	<p>by <c:out value="${product.manufacturer}"/></p>
	 	<c:set var="rating" value="${product.averageRating}"/>
 		<c:url value="/img/${rating.intValue()}-star.png" var="starImgLink"/>
 		<p class="starImg"><img src="${starImgLink}"/></p>
 		<p id = "price">Price: $<c:out value="${product.price}"/></p>
 		<c:choose>
   			<c:when test ="${product.weightInLbs % 1 == 0}">
   				<p class="weightInfo"><span class ="weight">Weight</span> <fmt:formatNumber type="number" maxFractionDigits="0" value="${product.weightInLbs}"/> lbs</p>
   			</c:when>
   			<c:otherwise>
   				<p class = "weightInfo"><span class ="weight">Weight</span> <fmt:formatNumber type="number" maxFractionDigits="1" value="${product.weightInLbs}"/> lbs</p>
   			</c:otherwise>
   		</c:choose>
 		<p><span class ="description">Description: </span><c:out value="${product.description}"/></p>	
	 </div>   				
</div>


<c:import url ="/WEB-INF/jsp/footer.jsp">
</c:import>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<c:import url ="/WEB-INF/jsp/header.jsp">
</c:import>

	  
	  <link rel="stylesheet" href="css/tiles.css" />
	  
	  <h1 class="title">Toy Department</h1>
	  
       	<div class="productGrid">
	       <c:forEach var="product" items="${productList}">
	       <c:url value="/productDetail?productId=${product.productId}" var="productDetailLink"/>
	       	<a href = "${productDetailLink}" class="toyContainer">
	       		<div  class ="productImg">
	       			<img src="img/${product.imageName}"/>
	       		</div>
	       		<div class = "productInfo">
	       			<c:choose>
	       				<c:when test="${product.topSeller}">
	       					<p href="${productDetailLink}" class = "name">${product.name}<span class ="bestSeller"> BEST SELLER!</span></p>
	       				</c:when>
	       				<c:otherwise>
		       				<p href="${productDetailLink}" class = "name">${product.name}</p>
		   				</c:otherwise>
		       		</c:choose>
		       		<p>by ${product.manufacturer}</p>
		       		<c:choose>
		       			<c:when test="${product.remainingStock <= 3}">
		       				<p class ="onlyRemaining">Only ${product.remainingStock} left!</p>
		       			</c:when>
		       		</c:choose>
		       		<p class = "price">$${product.price}</p>
		       		<c:choose>
		       			<c:when test ="${product.weightInLbs % 1 == 0}">
		       				<p><strong>Weight</strong> <fmt:formatNumber type="number" maxFractionDigits="0" value="${product.weightInLbs}"/> lbs</p>
		       			</c:when>
		       			<c:otherwise>
		       				<p><strong>Weight</strong> <fmt:formatNumber type="number" maxFractionDigits="1" value="${product.weightInLbs}"/> lbs</p>
		       			</c:otherwise>
		       		</c:choose>
	       			<c:set var="rating" value="${product.averageRating}"/>
	    				<c:url value="/img/${rating.intValue()}-star.png" var="starImgLink"/>
	    				<p class="starImg"><img src="${starImgLink}"/></p>
			    </div>
			  </a>  		
	       </c:forEach>       
		</div>

		<c:import url ="/WEB-INF/jsp/footer.jsp">
</c:import>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  

<c:import url ="/WEB-INF/jsp/header.jsp">
</c:import>
       
        <link rel="stylesheet" href="css/site.css" />
        
        <h1 class="title">Toy Department</h1>
       
	       <c:forEach var="product" items="${productList}">
	        <c:url value="/productDetail?productId=${product.productId}" var="productDetailLink"/>
	       	<a href="${productDetailLink}" class="toyContainer">
	       		<div class ="productImg">
	       			<img src="img/${product.imageName}"/>
	       		</div>
	       		<div class = "productInfo">
	       			<c:choose>
	       				<c:when test="${product.topSeller}">
	       					<p class = "name">${product.name} <strong class ="bestSeller">BEST SELLER!</strong></p>
	       				</c:when>
	       				<c:otherwise>
		       				<p class = "name">${product.name}</p>
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
		       			<c:choose>		    			
							<c:when test = "${product.averageRating >= 5}">	    						
								<div class="starImg">
									<img src="img/5-star.png"/>
								</div>
				    		</c:when>	
				    		<c:when test = "${product.averageRating >= 4}">
				    			<div class="starImg">
				    				<img src="img/4-star.png"/>
				    			</div>
				    		</c:when>
				    		<c:when test = "${product.averageRating >= 3}">
				    			<div class="starImg">
				 		   			<img src="img/3-star.png"/>
				 		   		</div>
				    		</c:when>
				    		<c:when test = "${product.averageRating >= 2}">
				    			<div class="starImg">
				    				<img src="img/2-star.png"/>
				    			</div>
				    		</c:when>
				    		<c:when test = "${product.averageRating >= 1}">
				    			<div class="starImg">
				    				<img src="img/1-star.png"/>
				    			</div>
				    		</c:when>
				    		</c:choose>
			    </div>
			  </div>  		
	       </c:forEach>
		
		<c:import url ="/WEB-INF/jsp/footer.jsp">
</c:import>
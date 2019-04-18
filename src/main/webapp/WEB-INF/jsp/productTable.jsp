<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<c:import url ="/WEB-INF/jsp/header.jsp">
</c:import>
       
       <link rel="stylesheet" href="css/table.css" />
       
       <h1 class="title">Toy Department</h1>
       
       <table class ="tableContainer">
	       <tr class = "imgRow">
	       <th class ="blankHeader"></th>
		       <c:forEach var="product" items="${productList}">
		       <c:url value="/productDetail?productId=${product.productId}" var="productDetailLink"/>
		       		<div class ="productImg">
		       			<th><a href="${productDetailLink}"><img src="img/${product.imageName}"/>
		       		
		       			<c:if test="${product.topSeller}">
		       				<p class ="bestSeller">BEST SELLER!</p></a></th>
		       			</c:if>
		       		</div>	
		       	</c:forEach>
		    </tr>
		    
		    <tr class ="nameRow">
		    	<td class ="rowHeader"><h5>Name</h5></td>
		    	 <c:forEach var="product" items="${productList}">
		    	 	<td class = "name"><a href="${productDetailLink}">${product.name}</a></td>
		    	 </c:forEach>
		    </tr>
		    <tr class="starRow">
		    	<td class ="rowHeader"><h5>Rating</h5></td>
		    	<c:forEach var="product" items="${productList}">
		    			<c:set var="rating" value="${product.averageRating}"/>
		    				<c:url value="/img/${rating.intValue()}-star.png" var="starImgLink"/>
		    				<td class="starImg"><img src="${starImgLink}"/></td>
		    	</c:forEach>
		    </tr>
		    <tr class="mfrRow">
		    <td class ="rowHeader"><h5>Mfr</h5></td>
		    	<c:forEach var="product" items="${productList}">
		    		<td>${product.manufacturer}</td>
		    	</c:forEach>
		    </tr>
			<tr class="priceRow">
				<td class ="rowHeader"><h5>Price</h5></td>
		    	<c:forEach var="product" items="${productList}">
		    		<td class = "price">$${product.price}</td>
		    	</c:forEach>
		    </tr>
		    <tr class="weightRow">
		    	<td class ="rowHeader"><h5>wt. (in lbs)</h5></td>
		    	<c:forEach var="product" items="${productList}">
		    		<c:choose>
			      		<c:when test ="${product.weightInLbs % 1 == 0}">
			     			<td> <fmt:formatNumber type="number" maxFractionDigits="0" value="${product.weightInLbs}"/></td>
			       		</c:when>
			       		<c:otherwise>
			       			<td> <fmt:formatNumber type="number" maxFractionDigits="1" value="${product.weightInLbs}"/></td>
			       		</c:otherwise>
			       	</c:choose>
		    	</c:forEach>
		    </tr>	     
		</table>
		
		<c:import url ="/WEB-INF/jsp/footer.jsp">
</c:import>
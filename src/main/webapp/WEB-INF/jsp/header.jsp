<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Zach's Toy Store</title>
    
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
        <c:url var="productListUrl" value="/productList"/>
            <li><a href="${productListUrl}">List View</a></li>
         <c:url var="productTableUrl" value="/productTable"/>
            <li><a href="${productTableUrl}">Table View</a></li>
          <c:url var="productTilesUrl" value="/productTiles"/>
            <li><a href="${productTilesUrl}">Tile View</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
			
       
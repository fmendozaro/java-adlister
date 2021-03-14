<%--
  Created by IntelliJ IDEA.
  User: fer
  Date: 3/13/21
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<form action="/pizza-order" method="POST">

    <label for="crust_types">Crust</label>
    <select name="crust_types" id="crust_types">
        <option value="rising_crust">Rising</option>
        <option value="thin_crust">Thin</option>
        <option value="stuffed_crust">Stuffed</option>
    </select>
    <br>

    <label for="sauce_type">Sauce</label>
    <select name="sauce_type" id="sauce_type">
        <option value="pesto">Pesto</option>
        <option value="three_cheese">3 Cheese</option>
        <option value="marinara">Marinara</option>
        <option value="bbq">BBQ</option>
    </select>
    <br>

    <label for="size">Size</label>
    <select name="size" id="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
        <option value="extra-large">X-Large</option>
    </select>
    <br>

    <label for="sausage">sausage</label><input name="toppings" id="sausage" type="checkbox" value="sausage">
    <br>
    <label for="pineapple">pineapple</label><input name="toppings" id="pineapple" type="checkbox" value="pineapple">
    <br>
    <label for="olive">olive</label><input name="toppings" id="olive" type="checkbox" value="olive">
    <br>
    <label for="basil">basil</label><input name="toppings" id="basil" type="checkbox" value="basil">
    <br>
    <label for="anchovies">anchovies</label><input name="toppings" id="anchovies" type="checkbox" value="anchovies">
    <br>
    <label for="mushroom">mushroom</label><input name="toppings" id="mushroom" type="checkbox" value="mushroom">
    <br>

    <label for="address">Address</label>
    <input id="address" name="address" type="text">
    <br>

    <input type="submit" value="Place Order">

</form>

</body>
</html>
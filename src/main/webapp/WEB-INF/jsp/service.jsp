<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include/header.jsp"/>


<div class="container">
    <div class="row" style="margin-top: 70px"><h1>Openings</h1>
        <h4>You looking to learn how to ski give us all call and set up a lesson we will have you skiing in no time
        </h4>
        <div class="col-med-4"></div>
        <div class="col-med-4">


            <table class="table table-striped table-hover table-info" style="left: auto !IMPORTANT">
                <tr>
                    <th align="left">Lesson</th>
                    <th align="center">Description</th>
                    <th align="right">Price</th>
                </tr>
                <c:forEach
                        items="${serviceKey}" var="services">
                    <tr scope="row" style="font-weight: bold;font-size: large">
                        <td align="left">${services.name}</td>
                        <td align="center">${services.description}</td>
                        <td align="right">${services.price}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="col-med-4"></div>


    </div>
    <select name="productId" id="productId">
        <c:forEach items="${serviceKey}" var="services">
            <option value="${services.id}">${services.name}</option>
        </c:forEach>
    </select>

    <button type="submit">Submit</button>
</div>


<jsp:include page="include/footer.jsp"/>
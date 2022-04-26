<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<jsp:include page="../include/header.jsp"/>


<div class="student-profile py-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent text-center">
                        <img class="profile_img" src="../../../pub/images/nophoto.png" alt="student dp" style="height: 320px; width: 300px;">
                        <h3>${firstName} ${lastName}</h3>
                    </div>
                    <div class="card-body">
                        <p class="mb-0"><strong class="pr-1">Student ID:</strong>${user.id}</p>

                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0">
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
                    </div>
                    <div class="card-body pt-0">
                        <table class="table table-bordered">
                            <tr>
                                <th width="30%">first name</th>
                                <td width="2%">:</td>
                                <td>${firstName}</td>
                            </tr>
                            <tr>
                                <th width="30%">last name	</th>
                                <td width="2%">:</td>
                                <td>${lastName}</td>
                            </tr>
                            <tr>
                                <th width="30%">email</th>
                                <td width="2%">:</td>
                                <td>${email}</td>
                            </tr>
                            <tr>
                                <th width="30%">phone</th>
                                <td width="2%">:</td>
                                <td>${phone}</td>
                            </tr>
                            <tr>
                                <th width="30%">address</th>
                                <td width="2%">:</td>
                                <td>${address}</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="height: 26px"></div>
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0">
                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Other Information</h3>
                    </div>
                    <div class="card-body pt-0">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<jsp:include page="../include/footer.jsp" />
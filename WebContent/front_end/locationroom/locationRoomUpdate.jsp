<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.locationroom.model.*"%>
<%
	LocrVO LocrVO = (LocrVO) request.getAttribute("LocrVO");
%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon"
	href="<%=request.getContextPath()%>/front_end/locationroom/images/logo-icon01.ico"
	type="image/x-icon" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/cssreset.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/header.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/footer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/LocSellerProfile.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/newCart.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/friendchat.css">
<link rel="stylesheet"
	type="<%=request.getContextPath()%>/front_end/locationroom/text/css"
	href="<%=request.getContextPath()%>/front_end/locationroom/css/jquery.datetimepicker.css" />
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="<%=request.getContextPath()%>/front_end/locationroom/js/jquery.datetimepicker.full.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="<%=request.getContextPath()%>/front_end/locationroom/js/newCartJSP.js"></script>
<title>???????????????MarryHappiness</title>
</head>
<style>
ul {
	list-style: none;
	padding-left: 0px;
}

div.showimg div {
	display: inline-block;
}
.imglist {
display: flex;
/* border: 1px solid #facfd2; */
}
.imglist form div{
display: inline-block;

}

@media (min-width: 768px){
	.col-md-3 {
		-ms-flex: 0 0 25%;
		flex: 0 0 25%;
		max-width: 250PX;
	}
}

</style>

<body>
    <!--??????-->
    <header>
        <div class="top">
            <ul>
                <!-- ???????????????Icon -->

                <li><a href="<%=request.getContextPath()%>/front_end/index/index.jsp">??????</a></li>
                <li><a href="<%=request.getContextPath()%>/front_end/member/login.html"><i class="fas fa-sign-out-alt"></i>??????</a></li>
				<li><a href="<%=request.getContextPath()%>/member/loginServlet?action=logout"><i class="fas fa-sign-out-alt"></i>??????</a></li>
                <li><a href="<%=request.getContextPath()%>/member/checkServlet"><i class="fas fa-home"></i> ????????????</a></li>
                <li class="headcart">
                    <a href="javascript:void(0)" id="cartModal">
                        <i class="fas fa-shopping-cart" id="cartIcon"></i></a>
                </li>

            </ul>
        </div>


        <!--????????????????????????-->
        <div class="nav1"></div>
        <ul class="nav2">
            <li><a href="<%=request.getContextPath()%>/front_end/workphoto/browseHome.html">????????????<br>Photography
				</a></li>
            <li><a href="<%=request.getContextPath()%>/front_end/locationprogram/LocIndex.html">????????????<br>Location
				</a></li>
            <li>
                <a href="<%=request.getContextPath()%>/front_end/workphoto/browseHome.html" class="logo"><img src="images/MHlogo_01.svg"></a>
            </li>
            <li><a href="<%=request.getContextPath()%>/front_end/product/ProductMain.html">????????????<br>Product
				</a></li>
            <li><a href="<%=request.getContextPath()%>/front_end/post/forumindex.html">????????????<br>Post
				</a></li>
        </ul>
    </header>
	<div class="wrap">
        <div class="side-bar">
            <img class="imgdata" src="" alt="">
            <div class="user-name s-user-name"></div>
            <div class="user-hr"><i class="fas fa-heart"></i></div>
            <ul class="menu">
                <li><a href="../front_end/member/LocSellerProfile.html?action=profile" id="profile"><i class="fas fa-user"></i>????????????</a></li>
                <li><a href="../front_end/member/LocSellerProfile.html?action=setting" id="setting"><i class="fas fa-file-invoice"></i>????????????</a></li>
                <li><a href="../front_end/member/LocSellerProfile.html?action=sellerProfile"><i class="fas fa-shopping-cart"></i>????????????</a></li>
                <li><a href="../front_end/locationprogram/Locmanagement.html"><i class="fas fa-church"></i>????????????</a></li>
                <li><a href="javascript:void(0)" id="locRManage"><i class="fas fa-home"></i>????????????</a></li>
                <ul class="menu-locR">
                    <li><a href="../front_end/locationorder/locationOrderGetAll.html"><i class="fas fa-user"></i>????????????</a>
                    </li>
                    <li><a href="../locationroom/locationRoomServlet?action=locationRoomGetAll"><i
                                class="fas fa-file-invoice"></i>????????????</a></li>

                    <li><a href="../front_end/locationroom/locationRoomGetOnee2.jsp"><i
                            class="fas fa-church"></i>????????????</a></li>
                    <li><a href="../locationroom/locationRoomServlet?action=locationRoomDelete"><i
                            class="fas fa-camera-retro"></i>????????????</a></li>
                </ul>
                <li><a href="javascript:void(0)" id="locPManage"><i class="fas fa-indent"></i>????????????</a></li>
                <ul class="menu-locP">
                    <li><a href="../front_end/locationprogram/listLocpBySmemId.html"><i class="fas fa-tasks"></i>????????????</a></li>
                    <li><a href="../front_end/locationprogram/addLocpimage.html"><i class="fas fa-folder-plus"></i></i>????????????</a></li>
                    <li><a href="../front_end/locationprogram/updateLocpimage.html"><i class="fas fa-pencil-alt"></i>????????????</a></li>
                    <li><a href="../front_end/locationprogram/delLocp.html"><i class="fas fa-trash-alt"></i>????????????</a></li>
                </ul>
                <li><a href="../front_end/locationprogram/loccalendar.html"><i class="far fa-calendar-alt"></i>????????????</a></li>
            </ul>
        </div>

		<div class="content">
			<%-- ???????????? --%>
			<c:if test="${not empty errorMsgs}">
				<font style="color: red">?????????????????????:</font>
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li style="color: red">${message}</li>
					</c:forEach>
				</ul>
			</c:if>
			<div class="mb-3">
				<label for="" class="form-label">????????????</label><br>



				<!-- 				???????????? -->

				<form METHOD="post" id="imgform" name="imgform" enctype="multipart/form-data">
					<div class="imgblock">
						<div class="form-horizontal">
							<div class="form-group">
								<input type="hidden" value="${locrVO.LOCR_ID}" name="LOCR_ID" id="LOCR_ID">
								<input type="submit" class="btn btn-danger" value="??????" id="button"> 
								<label for="file1">????????????:</label> 
								<input type="file" id="file1" name="file1" accept="image/*"> 
							</div>
							<br> <img id="demoimg" width="200" />
						</div>
					</div>
				</form>
				<!--?????????????????????-->
				<div class="imglist">
				<c:forEach var="LociVO" items="${lociList}">
					<form METHOD="post"
						ACTION="<%=request.getContextPath()%>/LociServlet?LOCI_ID=${LociVO.LOCI_ID}"
						name="image1">

						<div class="col-sm-6 col-md-3">
							<img
								src="<%=request.getContextPath()%>/locationimages/imgLociServlet?LOCI_ID=${LociVO.LOCI_ID}"
								class="img-thumbnail" alt=""> <input type="hidden"
								name="action" value="delete"> <input type="submit"
								class="btn btn-danger" value="??????">
						</div>
					</form>
				</c:forEach>
				</div>
			</div>

			<FORM METHOD="post"
				ACTION="<%=request.getContextPath()%>/locationroom/locrServletxx?LOCR_ID=${locrVO.LOCR_ID}"
				name="form1">

				<div class="mb-3">
					<label for="LOCR_ID" class="form-label">????????????</label> <input
						type="text" class="form-control" id="LOCR_ID" name="LOCR_ID"
						value="${locrVO.LOCR_ID}" disabled>
				</div>
				<div class="mb-3">
					<label for="LOCR_NAME" class="form-label">????????????</label> <input
						type="text" class="form-control" id="LOCR_NAME" name="LOCR_NAME"
						value="${locrVO.LOCR_NAME}">
				</div>
				<div class="mb-3">
					<label for="LOCR_MAX_TABLE" class="form-label">???????????????</label> <input
						type="text" class="form-control" id="LOCR_MAX_TABLE"
						name="LOCR_MAX_TABLE" value="${locrVO.LOCR_MAX_TABLE}">
				</div>
				<div class="mb-3">
					<label for="LOCR_MIN_TABLE" class="form-label">???????????????</label> <input
						type="text" class="form-control" id="LOCR_MIN_TABLE"
						name="LOCR_MIN_TABLE" value="${locrVO.LOCR_MIN_TABLE}">
				</div>
				<div class="mb-3">
					<label for="LOCR_MAIN_TABLE" class="form-label">????????????</label> <input
						type="text" class="form-control" id="LOCR_MAIN_TABLE"
						name="LOCR_MAIN_TABLE" value="${locrVO.LOCR_MAIN_TABLE}">
				</div>
				<div class="mb-3">
					<label for="LOCR_GUEST_TABLE" class="form-label">????????????</label> <input
						type="text" class="form-control" id="LOCR_GUEST_TABLE"
						name="LOCR_GUEST_TABLE" value="${locrVO.LOCR_GUEST_TABLE}">
				</div>
				<div class="mb-3">
					<label for="LOCR_FLOOR" class="form-label">????????????</label> <input
						type="text" class="form-control" id="LOCR_FLOOR" name="LOCR_FLOOR"
						value="${locrVO.LOCR_FLOOR}">
				</div>
				<div class="mb-3">
					<label for="LOCR_STATUS" class="form-label">????????????</label>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="LOCR_STATUS"
							id="LOCR_STATUS1" value="1"
							<c:if test="${locrVO.LOCR_STATUS==1}">checked</c:if>> <label
							class="form-check-label" for="LOCR_STATUS1">??????</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="LOCR_STATUS"
							id="LOCR_STATUS0" value="0"
							<c:if test="${locrVO.LOCR_STATUS==0}">checked</c:if>> <label
							class="form-check-label" for="LOCR_STATUS0">??????</label>
					</div>
				</div>
				<div class="mb-3">
					<label for="LOCR_CONTENT" class="form-label">????????????</label>
					<textarea class="form-control" id="LOCR_CONTENT"
						name="LOCR_CONTENT" rows="3">${locrVO.LOCR_CONTENT}</textarea>
				</div>
				<input type="hidden" name="action" value="update"> 
				<input type="submit" value="????????????" class="btn btn-danger">
				
			</form>
		</div>		
	</div>
    <!--??????-->
    <div class="footer">
        <div class="foote-top">
            <ul class="foote-content">
                <div>????????????</div>
                <li><a href="<%=request.getContextPath()%>/front_end/workphoto/browseHome.html">?????????</a></li>
            </ul>
            <ul class="foote-content">
                <div>????????????</div>
                <li><a href="<%=request.getContextPath()%>/front_end/locationprogram/LocIndex.html">????????????</a></li>
            </ul>
            <ul class="foote-content">
                <div>????????????</div>
                <li><a href="<%=request.getContextPath()%>/front_end/product/ProductSubGoods.html">????????????</a></li>
                <li><a href="<%=request.getContextPath()%>/front_end/product/ProductSubShoes.html">??????</a></li>
                <li><a href="<%=request.getContextPath()%>/front_end/product/ProductSubRing.html">??????</a></li>
            </ul>
            <ul class="foote-content">
                <div>????????????</div>
                <li><a href="<%=request.getContextPath()%>/front_end/post/forumindex.html">????????????</a></li>
            </ul>
        </div>
        <div class="foote-between">
            <img src="<%=request.getContextPath()%>/front_end/index/images/MHlogo_01.svg" alt="">
            <p class="f-logo">2021 MarryHappiness ????????????</p>
        </div>
    </div>
	<script>
		//????????????
		$('#file1').on('change', function() {
			var file = $('#file1')[0].files[0];
			var reader = new FileReader;
			reader.onload = function(e) {
				$('#demoimg').attr('src', e.target.result);
			};
			reader.readAsDataURL(file);
		})

		$('#imgform').on('submit', function(e) {
			$.ajax({
				url : "<%=request.getContextPath()%>/locationimages/LociServletAddImg",
				type : 'POST',
				data : new FormData(this),
				dataType : "JSON",
				processData : false,
				contentType : false,
				success : function(data) {
					alert("????????????");
					location.reload(false);
				},
				error : function(data) {
					alert("?????????????????????????????????5MB");
					location.reload(false);
				}
			});
			//??????form?????????????????????
			e.preventDefault();
		});

		$('#button').on('click',function(e){
			let file = $('#file1').val();
			if(file != ""){
				return true;
			}else{
				alert('???????????????');
				return false;
			}
		});

		//profile??????????????????????????????
        Ajaxprofile();
        //??????????????????????????????
        Ajaxheadshot();

        function Ajaxprofile() {
            $.ajax({
                type: "get",
                url: "../member/buyProfileServlet",
                dataType: 'json',
                success: function(result) {
                    if (result == "0") {
                        window.location.href = "../front_end/index/index.jsp";
                    } else {
                        resultData = result;
                        $('.user-name').html(result.name != null ? result.name : "????????????");
                        $('#phone').html(result.phone != null ? result.phone : "????????????");
                        $('#city').html(result.city != null ? result.city : "????????????");
                        $('#cityarea').html(result.cityarea != null ? result.cityarea : "????????????");
                        $('#street').html(result.street != null ? result.street : "????????????");
                    }
                }
            });
        };

        function Ajaxheadshot() {
            $.ajax({
                type: "post",
                url: "../member/headshotBuyServlet",
                data: {
                    "headshot": "headshot"
                },
                xhrFields: {
                    // ??????????????????Blob????????????????????????????????????
                    //jquery???dataType???????????????????????????blob??????????????????
                    responseType: "blob"
                },
                success: function(result) {
                    let img = document.getElementsByClassName('imgdata');
                    if (result.size != "0") {
                        let url = URL.createObjectURL(result);
                        for (let i = 0; i < img.length; i++) {
                            img[i].src = url;
                        }
                    } else {
                        for (let i = 0; i < img.length; i++) {
                            img[i].src = "../front_end/locationroom/images/music_castanet_girl.png";
                        }
                    }
                }
            });
        }

        $('#locRManage').on('click', function() {
            $('.menu-locR').slideToggle();
        });
        $('#locPManage').on('click', function() {
            $('.menu-locP').slideToggle();
        });
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath()%>/front_end/locationroom/js/friendchat.js"></script>

</body>
</html>
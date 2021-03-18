<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

<link rel='stylesheet' type='text/css' href="/resources/css/kakao.css">

<title>길찾기 결과 지도에 표출하기</title>
<!-- 기본 세팅 -->
<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>

	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="StAddrSearch(); return false;">
						<div>
							<div>출발지 :</div>
							<div>
								<input type="text" id="StAddress" placeholder="출발할 주소" size="15">
								<button type="submit" style="display: none;"></button>
							</div>
						</div>
					</form>
					<form onsubmit="EdAddrSearch(); return false;">
						<div>
							<div>도착지 :</div>
							<div>
								<input type="text" id="EdAddress" placeholder="도착할 주소" size="15">
								<button type="submit" style="display: none;"></button>
							</div>
						</div>
					</form>
					<button type="button" onclick="setingBounds();">길찾기</button>
				</div>
			</div>
			<hr>
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8fcc5a048bf6450e441cbbb5ae54174c&libraries=services"></script>

	<script type="text/javascript" src="/resources/js/Address.js"></script>

	<!-- <script type="text/javascript" src="/resources/js/ODsayAPI.js"></script> -->

</body>
</html>
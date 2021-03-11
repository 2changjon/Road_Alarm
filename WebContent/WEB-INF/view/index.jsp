<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>길찾기 결과 지도에 표출하기</title>
<link>
</head>
<body>
	<div class="search" style="">
		<input id="OPaddress" type="text" placeholder="출발할 주소">
		<input id="EDaddress" type="text" placeholder="도착할 주소">
		<input id="submit" type="button" value="주소 검색">
	</div>
	
	<div id="map" style="width: 100%; height: 400px;"></div>
	<!-- Naver Developers에서 발급받은 네이버지도 Application Key 입력  -->
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7dc89ogh13"></script>
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7dc89ogh13&submodules=geocoder"></script>
	<script type="text/javascript" src="/resources/js/Address.js"></script>
	<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
	<!-- <script type="text/javascript" src="/resources/js/ODsayAPI.js"></script>  -->

</body>
</html>
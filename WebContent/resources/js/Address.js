/** 네이버 코드 */

//지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일

//옵션 없이 지도 객체를 생성하면 서울 시청을 중심으로 하는 16 레벨의 지도가 생성됩니다.
var map = new naver.maps.Map(mapDiv);

/** 내 현재위치를 찾는 코드 
//지도 위에 올리는 정보 창
var infowindow = new naver.maps.InfoWindow();

//내 현재위치에 대한 정보 활용
function onSuccessGeolocation(position) {
    var location = new naver.maps.LatLng(position.coords.latitude, //위도
                                         position.coords.longitude); //경도

    //map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
    map.setZoom(15); // 지도의 줌 레벨을 변경합니다.
	
	//위치에 대한 설명출력
    infowindow.setContent('<div style="padding:20px;">' + 'geolocation.getCurrentPosition() 위치' + '</div>'); //내 위치
	
	//지도위에 올리는 정보창을 열겠다 지도 위경도에 맞는 지도 위치에
    infowindow.open(map, location);

    console.log('Coordinates: ' + location.toString());
}

// 내 현재 위치에 대한 정보를 못가져오면 실행됨(권한부여 거부시 실행)
function onErrorGeolocation() {
	//지도의 중앙
    var center = map.getCenter();
	
	//띄워져 있는 현재 위치상의 중앙에 대한 위경도
    infowindow.setContent('<div style="padding:20px;">' +
        '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');

    infowindow.open(map, center);
}

//화면이 열리면 내 위치 정보를 얻기위해 권한 여부를 물어본 뒤 현재위치 가져옴
$(window).on("load", function() {
    if (navigator.geolocation) {
        *
         * navigator.geolocation 은 Chrome 50 버젼 이후로 HTTP 환경에서 사용이 Deprecate 되어 HTTPS 환경에서만 사용 가능 합니다.
         * http://localhost 에서는 사용이 가능하며, 테스트 목적으로, Chrome 의 바로가기를 만들어서 아래와 같이 설정하면 접속은 가능합니다.
         * chrome.exe --unsafely-treat-insecure-origin-as-secure="http://example.com"
         
		//navigator.geolocation는 사용자의  지리적 위치 정보를 확인하는 API를 의미
		//getCurrentPosition(성공시, 실패시) 메서드를 호출해서 사용자의 현재 위치를 얻을 수 있음
        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);

//navigator.geolocation 지리적 지원 실패시 즉 연결 자체를 실패했을 때
} else {
	
        var center = map.getCenter();

        infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
		
		//지도위에 올리는 정보창을 열겠다 지도 중앙에
        infowindow.open(map, center);
    }
});
*/

/** 네이버 코드 끝 */

/** kakao 코드 */



/** kakao 코드 끝 */
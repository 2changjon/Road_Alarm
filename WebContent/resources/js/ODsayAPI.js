 	//default
	var mapOptions = {
		center: new naver.maps.LatLng(37.3595704, 127.105399),
		zoom: 10
	};
	//맵을 열겠다 mapOptions으로 위경도 값이 업으면 mapOptions 상의 위경도로 나옴
	var map = new naver.maps.Map('map', mapOptions);
	
	var sx = 126.93737555322481; //뒤
	var sy = 37.55525165729346; //앞
	
	var ex = 126.88265238619182;
	var ey = 37.481440035175375;
	
	//위치에서 위치까지의 경로를 찾겠다
	function searchPubTransPathAJAX() {
		
		//웹 브라우저와 웹 서버 간에 메소드가 데이터를 전송하는 객체 폼의 API 서버로부터 XML 데이터를 전송받아 처리하는 데 사용
		var xhr = new XMLHttpRequest();
		
		//ODsay AIP로 출발지와 도착지에 대한 위경도를 요청
		var url = "https://api.odsay.com/v1/api/searchPubTransPathT?SX="+sx+"&SY="+sy+"&EX="+ex+"&EY="+ey+"&apiKey=dO33dvqHyhUilJlO8htbGGjbnOGjQWMKC9ZhIuVLaCE";
		
		//요청 받은 데이터를 get 방식으로 참일 경우 저장
		xhr.open("GET", url, true);
		
		//XMLHttpRequest에 저장
		xhr.send();
		
		//서버로부터의 응답을 확인			
		xhr.onreadystatechange = function() {
			//xhr.readyState == 4 데이터를 전부 받은 상태  xhr.status == 200 요청 성공
			if (xhr.readyState == 4 && xhr.status == 200) {
			console.log( JSON.parse(xhr.responseText) ); // <- xhr.responseText 로 결과를 가져올 수 있음
			//노선그래픽 데이터 호출 / 지도에 마커 및 선 찍기 ["result"]["path"][0] 0번째 이동경로에서 info 데이터 안의 mapObj: "2:2:240:234@12:2:140:172" 출력
			callMapObjApiAJAX((JSON.parse(xhr.responseText))["result"]["path"][0].info.mapObj);
			}
		}
	}
	
	//길찾기 API 호출
	searchPubTransPathAJAX();
	//마커 찍기
	function callMapObjApiAJAX(mabObj){
		var xhr = new XMLHttpRequest();
		//ODsay apiKey 입력 searchPubTransPathAJAX에서 이미 출발지와 도착지에 대한 경로 정보를 설정했기 때문에 mabObj로 출발지와 도착지에 마커 찍을수 있다
		var url = "https://api.odsay.com/v1/api/loadLane?mapObject=0:0@"+mabObj+"&apiKey=dO33dvqHyhUilJlO8htbGGjbnOGjQWMKC9ZhIuVLaCE";
		xhr.open("GET", url, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				//요청한 결과를 저장한다
				var resultJsonData = JSON.parse(xhr.responseText);
				
				//네이버 마커 함수 가져오기
				drawNaverMarker(sx,sy);					// 출발지 마커 표시
				drawNaverMarker(ex,ey);					// 도착지 마커 표시
				//선 그리기
				drawNaverPolyLine(resultJsonData);		// 노선그래픽데이터 지도위 표시
				// boundary 데이터가 있을경우, 해당 boundary로 지도이동
				if(resultJsonData.result.boundary){
						var boundary = new naver.maps.LatLngBounds(
				
				                new naver.maps.LatLng(resultJsonData.result.boundary.top, resultJsonData.result.boundary.left),
				                new naver.maps.LatLng(resultJsonData.result.boundary.bottom, resultJsonData.result.boundary.right)
				
				                );
						map.panToBounds(boundary);
				}
			}
		}
	}
	
	// 지도위 마커 표시해주는 함수
	function drawNaverMarker(x,y){
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(y, x),
		    map: map
		});
	}
	
	// 노선그래픽 데이터를 이용하여 지도위 폴리라인 그려주는 함수
	function drawNaverPolyLine(data){
		var lineArray;
		
		for(var i = 0 ; i < data.result.lane.length; i++){
			for(var j=0 ; j <data.result.lane[i].section.length; j++){
				lineArray = null;
				lineArray = new Array();
				for(var k=0 ; k < data.result.lane[i].section[j].graphPos.length; k++){
					lineArray.push(new naver.maps.LatLng(data.result.lane[i].section[j].graphPos[k].y, data.result.lane[i].section[j].graphPos[k].x));
				}
				
			//지하철결과의 경우 노선에 따른 라인색상 지정하는 부분 (1,2호선의 경우만 예로 들음)
				if(data.result.lane[i].type == 1){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#003499'
					});
				}else if(data.result.lane[i].type == 2){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 3){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 4){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 5){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 6){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 7){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 8){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 9){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 10){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 11){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 12){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 13){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 14){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 15){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 16){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 17){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 18){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 19){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 20){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 21){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else if(data.result.lane[i].type == 22){
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3,
					    strokeColor: '#37b42d'
					});
				}else{
					var polyline = new naver.maps.Polyline({
					    map: map,
					    path: lineArray,
					    strokeWeight: 3
					});
				}
			}
		}
	}
/* kakao 코드 시작 */

var StLat = "0", StLng = "1", EdLat = "2", EdLng = "0";

// 마커를 담을 배열입니다
var markers = [];
var StMarker = []; //[0]출발지 도착지 구분 유무, [1]마커, [2]경도 , [3]위도
var EdMarker = []; ////[0]출발지 도착지 구분 유무, [1]마커, [2]경도 , [3]위도

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

/** 장소 검색 */
// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 출발지 검색을 요청하는 함수입니다
function StAddrSearch() {
	
	//출발지 입력값
    var StAddress = document.getElementById('StAddress').value;

    if (!StAddress.replace(/^\s+|\s+$/g, '')) {
        alert('출발지를 입력해주세요!');
        return false;
    }
	
	//출발지 검색 시작
	StMarker[0]= 1;
	//도착지 검색 종료
	EdMarker[0]= 0;
	console.log("StMarker[0] : "+StMarker[0]);
    
	// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( StAddress, placesSearchCB); //출발지
}

// 도착지 검색을 요청하는 함수입니다
function EdAddrSearch() {
	
	//도착지 입력값
	var EdAddress = document.getElementById('EdAddress').value;

    if (!EdAddress.replace(/^\s+|\s+$/g, '')) {
        alert('도착지를 입력해주세요!');
        return false;
    }
	
	//출발지 검색 종료
	StMarker[0]= 0;
	//도착지 검색 시작
	EdMarker[0]= 1;
	console.log("EdMarker[0] : "+EdMarker[0]);
	
	// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	ps.keywordSearch( EdAddress, placesSearchCB); //도착지
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {
			//출발 및 도착 마커가 있는 곳에는 새롭게 마커를 찍을 필요가 없어서
/*			if(StMarker[2] != places[i].y && StMarker[3] != places[i].x){
				console.log(i+"--StMarker[3] : "+StMarker[3]+" places[i].x : "+places[i].x);
				console.log(i+"--StMarker[2] : "+StMarker[2]+" places[i].y : "+places[i].y);
			}*/
	        if( (StMarker[2] != places[i].y && StMarker[3] != places[i].x) || (EdMarker[2] != places[i].y && EdMarker[3] != places[i].x) ){
				// 마커를 생성하고 지도에 표시합니다, 위경도 생산
		        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
		            marker = addMarker(places[i].y, places[i].x, i), 
		            itemEl = getListItem(i, places[i],places[i].y, places[i].x); // 검색 결과 항목 Element를 생성합니다
			}
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title, Lat, Lng) {
			var res = 0;
			//클릭했을경우
            kakao.maps.event.addListener(marker, 'click', function() {
				if(res == 1){
					infowindow.close();
					res = 0;
				}else{
				 	displayInfowindow(marker, title, Lat, Lng);
					res = 1;
				}
            });

			//마우스가 올라왔을때
            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title, Lat, Lng);
            };
			//마우스가 내려갔을때
            itemEl.onmouseout =  function () {
                infowindow.close();
            };

            /**
			kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();  //마우스가 내려가면 자동으로 꺼지는 걸 막기 위한 주석
            });
			 */

			//위 function(marker, title, Lat, Lng) 내용
        })(marker, places[i].place_name, places[i].y, places[i].x);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다  /순서대로 배열순서, 이름, 경도 ,위도
function getListItem(index, places, Lat, Lng) {
	//출발지 검색시
	if(StMarker[0] == 1 && EdMarker[0] == 0){
		if(StMarker[2] == Lat && StMarker[3] == Lng){
			var el = document.createElement('li'),
				itemStr = '<span class="startbg marker_' + (index+1) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="StartAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';	
		}else if(EdMarker[2] == Lat && EdMarker[3] == Lng){
			var el = document.createElement('li'),
				itemStr = '<span class="Endbg marker_' + (index+1) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="EndAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';
		}else if(StMarker[1] != null || EdMarker[1] != null){
			var el = document.createElement('li'),
	    	itemStr = '<span class="markerbg marker_' + (index) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="StartAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';	
		}else{
			var el = document.createElement('li'),
	    	itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="StartAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';
		}
	//도착지 검색지
	}else if(StMarker[0] == 0 && EdMarker[0] == 1){
		if(StMarker[2] == Lat && StMarker[3] == Lng){
			var el = document.createElement('li'),
				itemStr = '<span class="startbg marker_' + (index+1) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="StartAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';	
		}else if(EdMarker[2] == Lat && EdMarker[3] == Lng){
			var el = document.createElement('li'),
				itemStr = '<span class="Endbg marker_' + (index+1) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="EndAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';
		}else{
			var el = document.createElement('li'),
	    	itemStr = '<span class="markerbg marker_' + (index) + '"></span>' +
	        	        '<div class="info">' +
	            	    	'<h5>' +'<a href="#" onclick="EndAddr(' + "'"+places.place_name+"'" + ',' + Lat + ','  + Lng + ');return false;">'+ places.place_name +'</a>'+ '</h5>';
		}
	}

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다  경도 위도 순서
function addMarker(Lat, Lng, idx) {
	if(StMarker[2] == Lat && StMarker[3] == Lng) {
		var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
	    imageSize = new kakao.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
	    imgOptions = { 
	        offset: new kakao.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };
	}else if(EdMarker[2] == Lat && EdMarker[3] == Lng){
		var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png', // 도착 마커이미지 주소입니다 
	    imageSize = new kakao.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
	    imgOptions = { 
	        offset: new kakao.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };
	}else if(StMarker[1] != null || EdMarker[1] != null){
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, ((idx-1)*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37), // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        }
	}else{
		var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37), // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        }
	}
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	    position = new kakao.maps.LatLng(Lat, Lng),
		marker = new kakao.maps.Marker({
	      	position: position, // 마커의 위치
	      	image: markerImage,
			clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		});
	
	// 아래 코드는 위의 마커를 생성하는 코드에서 clickable: true 와 같이
	// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
	marker.setClickable(true);
    
	marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
	markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다 
function displayInfowindow(marker, title, Lat, Lng) {
    //출발지 검색시
	if(StMarker[0] == 1 || StMarker[1] != null){
		var content = '<div style="padding:5px;z-index:1;">' + title +'</div>'+
					'<button type="button" onclick="StartAddr(' + "'"+title+"'" + ',' + Lat + ','  + Lng + ');">' + '출발' + '</button>';
	//도착지 검색지
	}else if(EdMarker[0] == 1 || EdMarker[1] != null){
		var content = '<div style="padding:5px;z-index:1;">' + title +'</div>'+			
					'<button type="button" onclick="EndAddr(' + "'"+title+"'" + ',' + Lat + ','  + Lng + ');">'+'도착'+'</button>';
	}
	
    console.log("displayInfowindow "+title+" :  "+Lat, Lng);

	infowindow.setContent(content);
    infowindow.open(map, marker);
}

// 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
/** 장소 검색 끝 */
/** 출발 마커 부분 시작 */
function StartAddr(title, Lat, Lng){
	StLat = Lat;
	StLng = Lng;
	
	//출발 위치 위경도 
	console.log("StartAddr :"+StLat, StLng);
	
	// 검색목록 가져옴
	var listEl = document.getElementById('placesList');
  
	// 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

	// 페이지번호 가져옴
	var paginationEl = document.getElementById('pagination')	
	// 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

	// 지도에 표시되고 있는 마커를 제거합니다, 기존에 있는 목록 마크 삭제
	removeMarker();
	
	console.log("StMarker : "+StMarker);
	console.log("StMarker.length : "+StMarker.length);
	
	//출발마커가 기존에 있었다면 기존 마커 삭제
	if(StMarker.length >= 2){
		StMarker[1].setMap(null);
		StMarker = []; //배열 비우기
		console.log("StMarker delet : "+StMarker);
	}

	//출발 마커 이미지(고정위치) 
	var startSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
	    startSize = new kakao.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
	    startOption = { 
	        offset: new kakao.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };
	
	// 출발 마커 이미지를 생성합니다(고정위치)
	var startImage = new kakao.maps.MarkerImage(startSrc, startSize, startOption);
	
	// 출발 마커가 표시될 위치입니다 
	var startPosition = new kakao.maps.LatLng(StLat, StLng); 
	
	// 출발 마커를 생성합니다
	var startMarker = new kakao.maps.Marker({
	    map: map, // 출발 마커가 지도 위에 표시되도록 설정합니다
	    position: startPosition,
	    //draggable: true, // 출발 마커가 드래그 가능하도록 설정합니다
	    image: startImage, // 출발 마커이미지를 설정합니다
		
	});
	//지도에 startMarker 표시
	startMarker.setMap(map);
	
	//출발지 검색 및 마커 지정 끝났음으로 0으로 변경
	StMarker[0] = 0;
	console.log("StMarker[0] : "+StMarker[0]);
	
	//StMarker배열에 추가 [1]마커, [2]경도 , [3]위도
	StMarker.push(startMarker);
	StMarker.push(StLat);
	StMarker.push(StLng);
	console.log("StMarker new push: "+StMarker);
	
	var res = 1;
	kakao.maps.event.addListener(startMarker, 'click', function() {
		if(res == 1){
			infowindow.close();
			res = 0;
		}else{
			displayInfowindow(startMarker, title, StLat, StLng);
			res =1;
		}
	console.log("StartAddr InfoWindow: "+title+StLat, StLng);
	});
	
	/**
	//출발 마커 이미지(상대위치)
	var startDragSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_drag.png', // 출발 마커의 드래그 이미지 주소입니다    
	    startDragSize = new kakao.maps.Size(50, 64), // 출발 마커의 드래그 이미지 크기입니다 
	    startDragOption = { 
	        offset: new kakao.maps.Point(15, 54) // 출발 마커의 드래그 이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };
	
	// 출발 마커의 드래그 이미지를 생성합니다
	var startDragImage = new kakao.maps.MarkerImage(startDragSrc, startDragSize, startDragOption);
	
	// 출발 마커에 dragstart 이벤트를 등록합니다
	kakao.maps.event.addListener(startMarker, 'dragstart', function() {
	    // 출발 마커의 드래그가 시작될 때 마커 이미지를 변경합니다
	    startMarker.setImage(startDragImage);
	});
	
	// 출발 마커에 dragend 이벤트를 등록합니다
	kakao.maps.event.addListener(startMarker, 'dragend', function() {
	     // 출발 마커의 드래그가 종료될 때 마커 이미지를 원래 이미지로 변경합니다
	    startMarker.setImage(startImage);
	});
	*/
}
/** 출발 마커 부분 끝 */
/** 도착 마커 부분 시작 */
function EndAddr(title, Lat, Lng){
	EdLat = Lat;
	EdLng = Lng;
	
	//도착 위치 위경도 
	console.log("EndAddr :"+EdLat, EdLng);
	
	// 검색목록 가져옴
	var listEl = document.getElementById('placesList');
  
	// 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

	// 페이지번호 가져옴
	var paginationEl = document.getElementById('pagination')	
	// 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

	// 지도에 표시되고 있는 마커를 제거합니다, 기존에 있는 목록 마크 삭제
	removeMarker();
	
	console.log("EdMarker : "+EdMarker);
	console.log("EdMarker.length : "+EdMarker.length);
	//도착마커가 기존에 있었다면 기존 마커 삭제
	if(EdMarker.length >= 2){
		EdMarker[1].setMap(null);
		EdMarker = []; //배열 비우기
		console.log("EdMarker : "+EdMarker);
	}

	//도착 마커 이미지(고정위치) 
	var arriveSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png', // 도착 마커이미지 주소입니다 
	    arriveSize = new kakao.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
	    arriveOption = { 
	        offset: new kakao.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };
	
	// 도착 마커 이미지를 생성합니다(고정위치)
	var arriveImage = new kakao.maps.MarkerImage(arriveSrc, arriveSize, arriveOption);
	
	// 도착 마커가 표시될 위치입니다 
	var startPosition = new kakao.maps.LatLng(EdLat, EdLng); 
	
	// 도착 마커를 생성합니다
	var arriveMarker = new kakao.maps.Marker({
	    map: map, // 출발 마커가 지도 위에 표시되도록 설정합니다
	    position: startPosition,
	    //draggable: true, // 출발 마커가 드래그 가능하도록 설정합니다
	    image: arriveImage // 출발 마커이미지를 설정합니다
	});
	
	//지도에 arriveMarker 표시
	arriveMarker.setMap(map);

	//도착지 검색 및 마커 지정 끝났음으로 0으로 변경
	EdMarker[0]= 0;
	console.log("EdMarker[0] : "+EdMarker[0]);
	//EdMarker배열에 추가 [1]마커, [2]경도 , [3]위도
	EdMarker.push(arriveMarker);
	EdMarker.push(EdLat);
	EdMarker.push(EdLng);
	console.log("EdMarker new push: "+EdMarker);
	
	var res = 1;
	kakao.maps.event.addListener(arriveMarker, 'click', function() {
		if(res == 1){
			infowindow.close();
			res = 0;
		}else{
			displayInfowindow(arriveMarker, title, EdLat, EdLng);
			res =1;
		}
	console.log("arriveAddr InfoWindow: "+title+EdLat, EdLng);
	});
}
/** 도착 마커 부분 끝 */
/** 길찾기 버튼 클릭시 시작 */
function setingBounds() {
	// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
	var points = [
	    new kakao.maps.LatLng(StMarker[2], StMarker[3]),
	    new kakao.maps.LatLng(EdMarker[2], EdMarker[3])
	];
	
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	var bounds = new kakao.maps.LatLngBounds();    
	
	var k, markersMap;
	for (var k = 0; k < points.length; k++) {
		// 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
	    markersMap =     new kakao.maps.Marker({ position : points[k] });
	    markersMap.setMap(map);
	    
	    // LatLngBounds 객체에 좌표를 추가합니다
	    bounds.extend(points[k]);
	}
	
    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
    map.setBounds(bounds);
}
/* kakao 코드 끝 */
/** 위경도 삽입 시작 */

/** 위경도 삽입  끝 */
/** 길찾기 버튼 클릭시 끝 */
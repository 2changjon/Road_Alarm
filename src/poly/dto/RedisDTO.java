package poly.dto;

public class RedisDTO {
	
	//출발지 위경도
	String StLat1; //y
	String StLng1; //x

	//도착점 위경도
	String EdLat2;
	String EdLng2;
	
	public String getStLat1() {
		return StLat1;
	}
	public void setStLat1(String stLat1) {
		StLat1 = stLat1;
	}
	public String getStLng1() {
		return StLng1;
	}
	public void setStLng1(String stLng1) {
		StLng1 = stLng1;
	}
	public String getEdLat2() {
		return EdLat2;
	}
	public void setEdLat2(String edLat2) {
		EdLat2 = edLat2;
	}
	public String getEdLng2() {
		return EdLng2;
	}
	public void setEdLng2(String edLng2) {
		EdLng2 = edLng2;
	}
	
	
}

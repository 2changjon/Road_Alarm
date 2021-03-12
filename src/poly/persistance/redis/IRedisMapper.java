package poly.persistance.redis;

import poly.dto.RedisDTO;

public interface IRedisMapper {	
	
	//출발지 위경도 저장
	public int StAddSave(RedisDTO pDTO) throws Exception;
	
	//도착지 위경도 저장
	public int EdAddSave(RedisDTO pDTO) throws Exception;
	
	
	
}

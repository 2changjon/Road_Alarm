package poly.persistance.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import poly.dto.RedisDTO;

@Component("MyRedisMapper")
public interface IMyRedisMapper {
	
	@Autowired
	//public RedisTemplate<String, Object> redisDB;
	
	public String doSaveData(RedisDTO pDTO) throws Exception;
}

package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MainController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@ResponseBody
	@RequestMapping(value="index")
	public String Index() throws Exception {
		log.info(this.getClass());
		
		return "/index";
	}
			
}

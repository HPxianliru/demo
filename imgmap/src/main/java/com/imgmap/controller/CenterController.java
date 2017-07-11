package com.imgmap.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.imgmap.bean.User;

@Controller 
@RequestMapping("/center")
@SuppressWarnings({"all"})
public class CenterController extends BaseController {
	
	@RequestMapping("/project")
	public String project(){
		return "project";
	}
}

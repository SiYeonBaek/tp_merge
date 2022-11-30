package com.korea.ttrs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ProductDAO;
import util.MyCommon;
import vo.ProductVO;

@Controller
public class MainController {

	@Autowired
	ProductDAO product_dao;
	
	// index 페이지!!
	@RequestMapping(value = { "/", "index.do" })
	public String index(Model model) {
		List<ProductVO> list = product_dao.selectList();
		model.addAttribute("list", list);
		
		return MyCommon.MAIN_VIEW_PATH + "index.jsp";
	}

}

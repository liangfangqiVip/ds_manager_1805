package com.mr.controller;

import com.mr.model.TMallAttrVO;
import com.mr.model.TMallValue;
import com.mr.model.TMallValueVO;
import com.mr.service.AttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by LFQ on 2018/10/30.
 */
@Controller
public class AttrController {

    /**
     *
     */
    @Autowired
    private AttrService attrService;

    @RequestMapping("toAddAttrPage")
    public String toAddAttrPage(Integer flbh2, ModelMap map){
        map.put("flbh2",flbh2);
        return "attr-add";
    }
    @RequestMapping("saveAttr")
    public ModelAndView saveAttr(Integer flbh2, TMallAttrVO attrVO){
        attrService.saveAttr(flbh2,attrVO);
        ModelAndView mv=new ModelAndView();
        mv.addObject("flbh2",flbh2);
        mv.setViewName("redirect:toAddAttrPage.do");
        return mv;
    }

    //根据flbh2查询
    //根据flbh2查询
    @RequestMapping("queryAttrList")
    public String queryAttrList(Integer flbh2,ModelMap map){
        List<TMallValueVO> list=attrService.queryAttrList(flbh2);
        map.put("list",list);
        return "innerAttrPage";
    }

}

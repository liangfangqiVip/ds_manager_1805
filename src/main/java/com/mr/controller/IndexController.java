package com.mr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by LFQ on 2018/10/30.
 */
@Controller
public class IndexController {
    @RequestMapping("toSpuPage")
    public String toSpuPage(){
        return "spu";
    }
    @RequestMapping("toAttrPage")
    public String toAttrPage(){
        return "attr";
    }
    @RequestMapping("toSkuPage")
    public String toSkuPage(){
        return "sku";
    }
    @RequestMapping("toMainPage")
    public String toMainPage(){
        return "main";
    }

}

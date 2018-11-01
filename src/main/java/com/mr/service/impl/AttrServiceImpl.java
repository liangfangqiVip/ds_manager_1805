package com.mr.service.impl;

import com.mr.mapper.AttrMapper;
import com.mr.model.TMallAttr;
import com.mr.model.TMallAttrVO;
import com.mr.model.TMallProduct;
import com.mr.model.TMallValueVO;
import com.mr.service.AttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by LFQ on 2018/10/30.
 */
@Service
public class AttrServiceImpl implements AttrService {

    @Autowired
    private AttrMapper attrMapper;

    public void saveAttr(Integer flbh2, TMallAttrVO attrVO) {
        List<TMallValueVO> attrList=attrVO.getAttrList();
        for (int i = 0; i < attrList.size(); i++) {
            //新增attr
            TMallValueVO attr=attrList.get(i);
            attr.setFlbh2(flbh2);
            attrMapper.saveAttr(attr);
            //返回Id
            Map<String,Object>map=new HashMap<String,Object>();
            map.put("shxmId",attr.getId());
            map.put("valueList",attr.getValueList());
            attrMapper.saveValue(map);
        }
    }

    public List<TMallValueVO> queryAttrList(Integer flbh2) {

        return attrMapper.queryAttrList(flbh2);
    }

}

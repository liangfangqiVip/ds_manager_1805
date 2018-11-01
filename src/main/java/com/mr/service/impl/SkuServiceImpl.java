package com.mr.service.impl;

import com.mr.mapper.SkuMapper;
import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVo;
import com.mr.model.TMallValueVO;
import com.mr.service.SkuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by LFQ on 2018/10/31.
 */
@Service
public class SkuServiceImpl implements SkuService {

    @Autowired
    private SkuMapper skuMapper;

    public List<TMallProduct> selectSpu(TMallProduct spu) {
        return skuMapper.selectSpu(spu);
    }

    public void saveSku(TMallSkuVo skuVO) {
        //增加sku
        //获取返回的Id
        skuMapper.saveSku(skuVO);
        //根据获取的Id 增加skuValue
        System.out.println(skuVO);
        Map <String,Object> map = new HashMap <String,Object>();
        map.put("skuId",skuVO.getId());
        map.put("shpId",skuVO.getShpId());
        map.put("skuValue",skuVO.getSkuValue());
        skuMapper.SaveSkuValue(map);
    }
}

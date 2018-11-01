package com.mr.mapper;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVo;
import com.mr.model.TMallValueVO;

import java.util.List;
import java.util.Map;

/**
 * Created by LFQ on 2018/10/31.
 */
public interface SkuMapper {

    List<TMallProduct> selectSpu(TMallProduct spu);

    void saveSku(TMallSkuVo skuVO);

    void SaveSkuValue(Map<String, Object> map);
}

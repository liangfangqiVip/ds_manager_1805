package com.mr.service;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVo;
import com.mr.model.TMallValueVO;

import java.util.List;

/**
 * Created by LFQ on 2018/10/31.
 */
public interface SkuService {


    List<TMallProduct> selectSpu(TMallProduct spu);

    void saveSku(TMallSkuVo skuVO);
}

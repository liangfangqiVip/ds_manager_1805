package com.mr.service;

import com.mr.model.TMallProduct;

import java.util.List;

/**
 * Created by LFQ on 2018/10/29.
 */
public interface SpuService {

    void saveSpu(TMallProduct spu, List<String> stringList);

}

package com.mr.mapper;

import com.mr.model.TMallProduct;
import com.mr.model.TMallValueVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by LFQ on 2018/10/30.
 */
public interface AttrMapper {

    void saveAttr(TMallValueVO attr);

    void saveValue(Map<String, Object> map);

    List<TMallValueVO> queryAttrList(@Param("flbh2") Integer flbh2);


    List<TMallProduct> selectSpu(TMallProduct spu);
}

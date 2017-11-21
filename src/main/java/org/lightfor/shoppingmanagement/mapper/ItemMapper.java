package org.lightfor.shoppingmanagement.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.lightfor.shoppingmanagement.domain.Item;

import java.util.List;

/**
 * @author Light
 */
@Mapper
public interface ItemMapper {

    /**
     * 查询所有
     * @return 所有记录
     */
    @Select("SELECT * FROM ITEM")
    List<Item> findAll();
}

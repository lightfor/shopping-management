package org.lightfor.shoppingmanagement.service.impl;

import org.lightfor.shoppingmanagement.domain.Item;
import org.lightfor.shoppingmanagement.mapper.ItemMapper;
import org.lightfor.shoppingmanagement.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Light
 */
@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemMapper itemMapper;

    @Override
    public List<Item> findAll() {
        return itemMapper.findAll();
    }
}

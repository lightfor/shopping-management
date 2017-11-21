package org.lightfor.shoppingmanagement.service;

import org.lightfor.shoppingmanagement.domain.Item;

import java.util.List;

/**
 * @author Light
 */
public interface ItemService {

    List<Item> findAll();
}

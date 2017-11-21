package org.lightfor.shoppingmanagement.web;

import org.lightfor.shoppingmanagement.domain.Item;
import org.lightfor.shoppingmanagement.domain.Pager;
import org.lightfor.shoppingmanagement.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Light
 */
@Controller
public class ItemController {

    @Autowired
    private ItemService itemService;

    @RequestMapping("/")
    public String item() {
        return "item";
    }

    @RequestMapping("/getAll")
    @ResponseBody
    public Pager getAll() {
        Pager<Item> itemPager = new Pager<>();
        itemPager.setRows(itemService.findAll());
        return itemPager;
    }
}

package org.lightfor.shoppingmanagement.domain;

import java.util.List;

/**
 * @author Light
 * @param <T>
 */
public class Pager<T> {

    private List<T> data;

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}

package org.lightfor.shoppingmanagement.domain;

import java.util.List;

/**
 * @author Light
 * @param <T>
 */
public class Pager<T> {

    private List<T> rows;

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}

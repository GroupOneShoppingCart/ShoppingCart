/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class Cart {

    private List<ProDetails> cartList = new ArrayList<>();

    public Cart() {
    }

    public List<ProDetails> getCartList() {
        return cartList;
    }

    public void addToCart(ProDetails pro) {
        cartList.add(pro);
    }

    public void removeFromCart(int id) {
        cartList.remove(id);
    }

}

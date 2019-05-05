/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author davil
 */
public class Product {
    private int id; private String productCode; private String description;

    public static ArrayList<Product> getList(int manufacturerId) throws Exception{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        Connection con = DriverManager.getConnection(url, "app", "app");
        String SQL = "SELECT * FROM PRODUCT WHERE MANUFACTURER_ID = ?";
        PreparedStatement st = con.prepareStatement(SQL);
        st.setInt(1, manufacturerId);
        ResultSet rs = st.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next()){
            Product p = new Product(
                    rs.getInt("PRODUCT_ID"),
                    rs.getString("PRODUCT_CODE"),
                    rs.getString("DESCRIPTION")                    
            );
            list.add(p);
        }
        rs.close(); st.close(); con.close();
        return list;
    }
    
    public Product(int id, String productCode, String description) {
        this.id = id;
        this.productCode = productCode;
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }
    
}

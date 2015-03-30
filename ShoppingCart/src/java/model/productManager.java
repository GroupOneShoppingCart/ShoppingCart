/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class productManager {

    private ProDetails pd;
    private List<Product> proList = new ArrayList<>();
    private ResultSet rs;

    public List<Product> ListAll() {

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String dbUser = "sa";
            String dbPassword = "123456";
            String url = "jdbc:sqlserver://DELL-PC\\SQLEXPRESS:1433;databaseName=ProductManager";
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
            PreparedStatement ps = conn.prepareStatement("Select* from Products");
            rs = ps.executeQuery();
            while (rs.next()) {
                Product pro = new Product();
                pro.setId(rs.getInt("id"));
                pro.setName(rs.getString("name"));
                pro.setPrice(rs.getFloat("price"));
                proList.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return proList;
    }

    public ProDetails FindByID(int id) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String dbUser = "sa";
            String dbPassword = "123456";
            String url = "jdbc:sqlserver://DELL-PC\\SQLEXPRESS:1433;databaseName=ProductManager";
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
            PreparedStatement ps = conn.prepareStatement("Select * from [ProDetails] where pro_id = ?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                pd = new ProDetails();
                pd.setId(rs.getInt("pro_id"));
                pd.setName(rs.getString("pro_name"));
                pd.setDescription(rs.getString("description"));
                pd.setPrice(rs.getFloat("price"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pd;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.User.UserDetails;
import java.sql.*;

/**
 *
 * @author asus
 */
public class UserDAO {
    private Connection conn;

    public UserDAO(Connection conn) {
        super();
        this.conn = conn;
    }
    
    public boolean addUser(UserDetails us) throws SQLException{
        boolean f= false;
        String query="insert into user values(?,?,?)";
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1, us.getName());
        ps.setString(1, us.getEmail());
        ps.setString(1, us.getPassword());
        ps.setString(1, us.getGender());
        int i= ps.executeUpdate();
        if(i==1){
            f=true;
        }
        
        
        
        
        
        
        return f;
    }
}

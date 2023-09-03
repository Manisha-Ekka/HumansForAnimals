/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */

public class Registration extends HttpServlet {
    /*private static final long serialVersionUID=1L;*/
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname=request.getParameter("fname");
        String lname= request.getParameter("lname");
        String email= request.getParameter("user_email");
        String password= request.getParameter("user_pass");
        String gender= request.getParameter("gender");
        
        PrintWriter pw= response.getWriter();
        pw.print(fname);
        pw.print(lname);
        pw.print(email);
        pw.print(password);
        pw.print(gender);
        RequestDispatcher dispatcher=null;
        Connection conn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/animalwelfare?useSSL= false","root","123456789");
            PreparedStatement ps= conn.prepareStatement("insert into user(fname,lname,email,password,gender) values(?,?,?,?,?)");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, gender);
            
            int rowCount=ps.executeUpdate();
            dispatcher= request.getRequestDispatcher("register.jsp");
            if(rowCount>0){
                request.setAttribute("status", "success");
            }
            else
            {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
}
}

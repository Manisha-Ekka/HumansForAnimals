/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("user_email");
        String password = request.getParameter("user_pass");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animalwelfare?useSSL= false", "root", "123456789");
            PreparedStatement ps = conn.prepareStatement("select * from user where email=? and password=?");

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            try {
                if (rs.next()) {
                    session.setAttribute("user_email", rs.getString("email"));
                    if (email.equals("admin@gmail.com") && password.equals("admin@123")) {
                        dispatcher = request.getRequestDispatcher("adminhome.jsp");
                    } else {
                        dispatcher = request.getRequestDispatcher("userhome.jsp");
                    }
                }
                else
                {
                    request.setAttribute("status", "failed");
                    dispatcher=request.getRequestDispatcher("login.jsp");
                }
                    dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            } /*catch (ClassNotFoundException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }*/
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */ 

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
    }
}

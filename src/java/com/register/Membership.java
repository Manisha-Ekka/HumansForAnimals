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
public class Membership extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullname = request.getParameter("name");
        String phone = request.getParameter("phone");
        String interest = request.getParameter("interest");
        String residence = request.getParameter("residence");
        String experience = request.getParameter("experience");
        String reason = request.getParameter("description");

        PrintWriter pw = response.getWriter();
        pw.print(fullname);
        pw.print(phone);
        pw.print(interest);
        pw.print(residence);
        pw.print(experience);
        pw.print(reason);
        RequestDispatcher dispatcher = null;
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animalwelfare?useSSL= false", "root", "123456789");
            PreparedStatement ps = conn.prepareStatement("insert into member(fullname,phone,interest,residence,experience,reason) values(?,?,?,?,?,?)");
            ps.setString(1, fullname);
            ps.setString(2, phone);
            ps.setString(3, interest);
            ps.setString(4, residence);
            ps.setString(5, experience);
            ps.setString(6, reason);

            int rowCount = ps.executeUpdate();
            dispatcher = request.getRequestDispatcher("userhome.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    
    }
}

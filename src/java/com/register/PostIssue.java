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
public class PostIssue extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String issue = request.getParameter("issue");
        String location = request.getParameter("location");
        String landmark = request.getParameter("landmark");
        String description = request.getParameter("description");

        PrintWriter pw = response.getWriter();
        pw.print(name);
        pw.print(phone);
        pw.print(issue);
        pw.print(location);
        pw.print(landmark);
        pw.print(description);
        RequestDispatcher dispatcher = null;
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animalwelfare?useSSL= false", "root", "123456789");
            PreparedStatement ps = conn.prepareStatement("insert into report_case(name,phone,issue,location,landmark,description) values(?,?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, issue);
            ps.setString(4, location);
            ps.setString(5, landmark);
            ps.setString(6, description);

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

/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */

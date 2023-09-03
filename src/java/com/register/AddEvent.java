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
public class AddEvent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String event = request.getParameter("event");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        String description = request.getParameter("description");

        PrintWriter pw = response.getWriter();
        pw.print(event);
        pw.print(location);
        pw.print(date);
        pw.print(description);
        RequestDispatcher dispatcher = null;
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animalwelfare?useSSL= false", "root", "123456789");
            PreparedStatement ps = conn.prepareStatement("insert into event(event,location,date,description) values(?,?,?,?)");
            ps.setString(1, event);
            ps.setString(2, location);
            ps.setString(3, date);
            ps.setString(4, description);

            int rowCount = ps.executeUpdate();
            dispatcher = request.getRequestDispatcher("adminhome.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddEvent.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddEvent.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AddEvent.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

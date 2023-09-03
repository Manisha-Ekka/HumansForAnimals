<%-- 
    Document   : member_application
    Created on : Mar 30, 2023, 5:22:15 PM
    Author     : asus
--%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Membership Applications</title>
        <%@include file="forall/allcss.jsp" %>
    </head>
    <body>
        <%@include file="forall/adminnavbar.jsp" %>
        <h1 class="text-center">Membership Applications</h1>
        <%
            String driverName = "com.mysql.jdbc.Driver";
            String connectionURL = "jdbc:mysql://localhost:3306/animalwelfare?useSSL=false";
            String userID = "root";
            String password = "123456789";

            try {
                Class.forName(driverName);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;


        %>
        <table class="table table-striped table-hover" border="3">
            <thead>
                <tr>
                    <th scope="col"> S.No.</th>
                    <th scope="col"> Name</th>
                    <th scope="col"> Contact</th>
                    <th scope="col"> Interest</th>
                    <th scope="col"> Residence</th>
                    <th scope="col"> Experience</th>
                    <th scope="col"> Reason</th>
                </tr>
            </thead>

            <%                try {
                    conn = DriverManager.getConnection(connectionURL, userID, password);
                    stmt = conn.createStatement();
                    String sql = "SELECT * FROM member";

                    rs = stmt.executeQuery(sql);
                    while (rs.next()) {
            %>
            <tbody>
                <tr>
                    <td><%=rs.getString("mem_id")%></td>
                    <td><%=rs.getString("fullname")%></td>
                    <td><%=rs.getString("phone")%></td>
                    <td><%=rs.getString("interest")%></td>
                    <td><%=rs.getString("residence")%></td>
                    <td><%=rs.getString("experience")%></td>
                    <td><%=rs.getString("reason")%></td>
                </tr>
            </tbody>
            <%
                }
                }catch(Exception e){
                    e.printStackTrace();
                }
            %>
        </table>
        <%@include file="forall/foot.jsp" %>
    </body>
</html>

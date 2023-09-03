<%-- 
    Document   : view_user
    Created on : Mar 31, 2023, 1:02:27 AM
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
        <title>View User</title>
        <%@include file="forall/allcss.jsp" %>
    </head>
    <body>
        <%@include file="forall/adminnavbar.jsp" %>
        <h1 class="text-center">Registered Users</h1>
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
                    <th scope="col"> First Name</th>
                    <th scope="col"> Last Name</th>
                    <th scope="col"> Email</th>
                    <th scope="col"> Gender</th>
                </tr>
            </thead>

            <%                try {
                    conn = DriverManager.getConnection(connectionURL, userID, password);
                    stmt = conn.createStatement();
                    String sql = "SELECT * FROM user";

                    rs = stmt.executeQuery(sql);
                    while (rs.next()) {
            %>
            <tbody>
                <tr>
                    <td><%=rs.getString("user_id")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("lname")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("gender")%></td>
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
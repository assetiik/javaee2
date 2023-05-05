package servlets;

import db.DBConnection;
import db.Items;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Items> item = DBConnection.getItems();
        request.setAttribute("item", item);
        request.getRequestDispatcher("/tasks.jsp").forward(request, response);


    }
}

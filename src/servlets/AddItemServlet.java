package servlets;

import db.DBConnection;
import db.Items;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddItemServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("item_name");
        String description = request.getParameter("item_description");
        double price = Double.parseDouble(request.getParameter("item_price"));

        Items item = new Items();
        item.setName(name);
        item.setDescription(description);
        item.setPrice(price);
        DBConnection.addItems(item);

        response.sendRedirect("/");

    }
}

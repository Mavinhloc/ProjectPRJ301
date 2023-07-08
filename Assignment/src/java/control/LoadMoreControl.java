/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class LoadMoreControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String amount = request.getParameter("exist");
        int iamount = Integer.parseInt(amount);
        DAO dao = new DAO();
        List<Product> list = dao.getNext3Product(iamount);
        PrintWriter out = response.getWriter();

        for (Product o : list) {
            out.println("<div class=\"product col-lg-4\">\n"
                    + "                            <div class=\"item\">\n"
                    + "                                <div class=\"thumb\">\n"
                    + "                                    <div class=\"hover-content\">\n"
                    + "                                        <ul>\n"
                    + "                                            <li><a href=\"single-product.jsp\"><i class=\"fa fa-eye\"></i></a></li>\n"
                    + "                                            <li><a href=\"single-product.jsp\"><i class=\"fa fa-star\"></i></a></li>\n"
                    + "                                            <li><a href=\"single-product.jsp\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n"
                    + "                                        </ul>\n"
                    + "                                    </div>\n"
                    + "                                    <img src=\""+o.getImage()+"\" alt=\"\">\n"
                    + "                                </div>\n"
                    + "                                <div class=\"down-content\">\n"
                    + "                                    <h4><a href=\"detail?pid="+o.getId()+"\">"+o.getName()+"</a></h4>\n"
                    + "                                    <span>"+o.getPrice()+" $</span>\n"
                    + "                                    <h5>"+o.getTitle()+"</h5>\n"
                    + "                                </div>\n"
                    + "                            </div>\n"
                    + "                        </div>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

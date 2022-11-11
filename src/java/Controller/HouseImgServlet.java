/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dao.AccountDAO;
import Dao.HouseImgDAO;
import Model.Account;
import Model.HouseImg;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kiety
 */
@WebServlet(name = "HouseImgServlet", urlPatterns = {"/HouseImgServlet"})
public class HouseImgServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int id = Integer.parseInt(request.getParameter("id"));
            List<HouseImg> h = new ArrayList<>();
            HouseImgDAO dao = new HouseImgDAO();
            h = dao.getHouseImgbyID(id);
            if (h != null) {
                request.setAttribute("h", h);
                request.getRequestDispatcher("/HouseImg.jsp").forward(request, response);
            }
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
        try {
            String action = request.getParameter("sub");
            if (action.equals("uploadPic")) {
                //HttpSession session = request.getSession();
                int houseimgid = Integer.parseInt(request.getParameter("id"));
                String uploadFolder = "C:/Users/Admin/OneDrive/Desktop/HouseBookingSystem_SWP391/web/Images/houseimgs";
                Path uploadPath = Paths.get(uploadFolder);
                if (!Files.exists(uploadPath)) {
                    Files.createDirectory(uploadPath);
                }
                Part imgPart = request.getPart("houseimg");
                String imageFileName = Paths.get(imgPart.getSubmittedFileName()).getFileName().toString();
                imgPart.write(Paths.get(uploadPath.toString(), imageFileName).toString());
                HouseImgDAO dao = new HouseImgDAO();
                //dao.updatePic(imageFileName, houseimgid);
                request.setAttribute("mess", "upload image success!!");
                //house.setImglink(imageFileName);
                //session.setAttribute("houseimg", houseimgid);
                request.getRequestDispatcher("/HouseImg.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

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

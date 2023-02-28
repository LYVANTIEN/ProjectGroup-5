    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import context.SignUpErrorCatcher;
import dao.DAO;
import entity.Account;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author NGO VU HUY
 */
public class SignUpControl extends HttpServlet {

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
        String URL="SignIn2.jsp";  
        try {
         String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String repass = request.getParameter("repass");
        if(SignUpErrorCatcher.usernameErrorExisted(username) !=null){
            request.setAttribute("usernameError", SignUpErrorCatcher.usernameErrorExisted(username));
        }else if(
           SignUpErrorCatcher.usernameErrorLength(username) != null
           ||  SignUpErrorCatcher.passwordError(password) != null
           ||  SignUpErrorCatcher.confirmError(password, repass)!= null
                ){
           request.setAttribute("usernameError", SignUpErrorCatcher.usernameErrorLength(username));
           request.setAttribute("passwordError", SignUpErrorCatcher.passwordError(password));
           request.setAttribute("confirmError", SignUpErrorCatcher.confirmError(password, repass));
        }else{
            DAO dao = new DAO();
            if( SignUpErrorCatcher.usernameErrorExisted(username) == null){
                // dc signup
                   request.setAttribute("mess", "SignIn Succsessful!");
                dao.signup(username, password);
           //  response.sendRedirect("Login.jsp");
            }else{
                // day ve trang login.jsp
               response.sendRedirect("login");
            }
        }
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(URL);
            rd.forward(request, response);
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

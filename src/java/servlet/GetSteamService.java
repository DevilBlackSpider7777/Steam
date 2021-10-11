/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mol.Steam;
import org.json.JSONObject;

/**
 *
 * @author ASUS ROG GAMING
 */
public class GetSteamService extends HttpServlet {

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
        String requestUrl = request.getRequestURI();
        String name = requestUrl.substring("/Steam/GetSteamService/".length());
        Steam steam = SteamData.getInstance().getSteam(name);
        if (steam != null) {
            String json = "{\n";
            json += "\"Gamename\": " + JSONObject.quote(steam.getGamename()) + ",\n";
            json += "\"social1\": " + JSONObject.quote(steam.getSocial1()) + ",\n";
            json += "\"GameType\": " + JSONObject.quote(steam.getGameType()) + "\n";
            json += "\"Synopsis\": " + JSONObject.quote(steam.getSynopsis()) + "\n";
            json += "\"cc\": " + JSONObject.quote(steam.getCc()) + "\n";
            json += "}";
            response.getOutputStream().println(json);
        } else {
            //That person wasn't found, so return an empty JSON object. We could also return an error.
            response.getOutputStream().println("{}");
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
            protected void doGet
            (HttpServletRequest request, HttpServletResponse response)
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
            protected void doPost
            (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                processRequest(request, response);
            }

            /**
             * Returns a short description of the servlet.
             *
             * @return a String containing servlet description
             */
            @Override
            public String getServletInfo
            
            
            
            
            
                () {
        return "Short description";
            }// </editor-fold>

        }

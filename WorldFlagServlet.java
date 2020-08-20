package cmu.audreyl;

/**
 * Author: Audrey Liu
 * Last Modified: Sep 15, 2019
 *
 * This file is the Controller component of the MVC, and it receives input from the
 * view component, processes the request from the view and passes on the input to the
 * model component. It then receives the processed result from the model component,
 * and return the results to the view. Specifically, this servlet recives the user's
 * choice of flag and asks the model to find the flag url, the country url/description.
 * It then returns these information to the view.
 */

// imports required for UDP/IP
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

/*
 * The following WebServlet annotation gives instructions to the web container.
 * It states that when the user browses to the URL path /getWorldFlag
 * then the servlet with the name WorldFlagServlet should be used.
 *
 */
@WebServlet(name = "WorldFlagServlet",
        urlPatterns = {"/getWorldFlag"})
public class WorldFlagServlet extends javax.servlet.http.HttpServlet {

    // The model for this app
    WorldFlagModel flg = null;

    // Initiate this servlet by instantiating the model that it will use.
    @Override
    public void init() {
        flg = new WorldFlagModel();
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    // This servlet will reply to HTTP GET requests via this doGet method
    @Override
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        // get the search parameter if it exists
        String tag = request.getParameter("country_selector");

        // determine what type of device our user is
        String ua = request.getHeader("User-Agent");

        // prepare the appropriate DOCTYPE for the view pages
        // send the information of device type to result.jsp through setAttributes
        if (ua != null && ((ua.indexOf("Android") != -1) || (ua.indexOf("iPhone") != -1))) {

            request.setAttribute("doctype", "<!DOCTYPE html PUBLIC \"-//WAPFORUM//DTD XHTML Mobile 1.2//EN\" \"http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd\">");
            request.setAttribute("size", "M");
        } else {
            request.setAttribute("doctype", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
            request.setAttribute("size", "C");
        }

        String nextView;

        /*
         * Check if the search parameter is present.
         * If not, then stay on the prompt page.
         * If there is a search parameter, then do the search and return the result.
         */
        if (tag != null) {

            //the search method will return all needed information in
            //a list of string
            String[] URL = flg.search(tag);

            nextView = "result.jsp";

            //return the list of string to the view
            request.setAttribute("data", URL);

        }
        else{
            // no search parameter so choose the prompt view
            nextView = "prompt.jsp";
        }

        // Transfer control over the the correct "view"
        RequestDispatcher view = request.getRequestDispatcher(nextView);
        view.forward(request, response);

    }
}

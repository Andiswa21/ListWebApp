/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.ListSB;
import za.ac.tut.model.bl.ListSBLocal;

/**
 *
 * @author admin
 */
public class ControllerServelet extends HttpServlet {
    @EJB ListSBLocal lsb;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String op = request.getParameter("op");
       String url = "index.html";
       
       // check selected from menue 
       if(op.equals("add")){
           
           
           Integer num = Integer.parseInt(request.getParameter("num"));
           // add to the list
           lsb.add(num);
           // set attribute 
           request.setAttribute("num",num);
           url = "addition.jsp";
       } else if(op.equals("get")){
           Integer size = lsb.getSize();
           request.setAttribute("size", size);
           url = "getSize.jsp";
       }else if(op.equals("get_list")){
           List<Integer> numbers = lsb.getList();
           request.setAttribute("numbers", numbers);
           url ="get_list_outcome.jsp";
       }
       RequestDispatcher disp = request.getRequestDispatcher(url);
       disp.forward(request, response);
    }


}

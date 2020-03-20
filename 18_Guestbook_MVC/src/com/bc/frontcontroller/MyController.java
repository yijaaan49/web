package com.bc.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.command.Command;
import com.bc.command.DeleteCommand;
import com.bc.command.InsertCommand;
import com.bc.command.ListCommand;
import com.bc.command.OnelistCommand;
import com.bc.command.UpdateCommand;



@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		
		Command comm = null;
		String path = "";
		if("del".equals(type)) {
			comm = new DeleteCommand();
		} else if("update".equals(type)) {
			comm = new UpdateCommand();
		} else if("insert".equals(type)) {
			comm = new InsertCommand();
		} else if("onelist".equals(type)) {
			comm = new OnelistCommand();
		} else if(type.equals(null)) {
			comm = new ListCommand();
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

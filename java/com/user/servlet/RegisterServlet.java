package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImp;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("Email");
			String phno = req.getParameter("PhNo");
			String password = req.getParameter("Password");
			String check = req.getParameter("check");
			// System.out.println(name+" "+email+" "+phno+" "+password+" "+check);

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);

			HttpSession session = req.getSession();
			if (check != null) {
				
				UserDAOImp dao = new UserDAOImp(DBConnect.getConn());
				boolean f2 = dao.checkUser(email);
				if(f2) {
					boolean f = dao.userRegister(us);
					if(f) {
						session.setAttribute("succMsg", "Registration Successfully..");
						resp.sendRedirect("register.jsp");
					}else {
						session.setAttribute("failedMsg", "Please Check Term & Condition");
						resp.sendRedirect("register.jsp");
					}
				}else {
					session.setAttribute("failedMsg", "User Already Exist Try Another Email id");
					resp.sendRedirect("register.jsp");
				}
			} else {
				session.setAttribute("failedMsg", "Please Check Term & Condition");
				resp.sendRedirect("register.jsp");
				//System.out.println("Please Check Term & Condition");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

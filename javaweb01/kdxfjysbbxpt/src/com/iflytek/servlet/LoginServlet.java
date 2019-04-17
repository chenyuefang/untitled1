package com.iflytek.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("jsp/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 1、设置编码
		 * 2、获取页面的参数
		 * 3、参数校验
		 * 
		 * 4、请求javabean model层处理业务
		 * 5、model和数据库交互
		 * 6、获取数据库交互的结果
		 * 
		 * 7、选择合适的view 页面进行跳转
		 */
		request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String image = request.getParameter("image");
		String rememberMe = request.getParameter("rememberMe");
		
		String verCode = (String)request.getSession().getAttribute("text");
		if (!verCode.equals(image)) {
			request.setAttribute("error", "验证码输入错误");
			request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
			return;
		}
		
		response.sendRedirect("index.jsp");
	}
}

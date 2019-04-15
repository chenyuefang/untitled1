package com.iflytek;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        System.out.println("构造函数...");
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("执行了init函数...");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("执行了destroy函数...");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 调到某个页面上去   hello.jsp  动态网页了
		System.out.println("执行了doGet函数...");
		
		// 跳转页面 -- 直接跳转 能够看到我请求路径地址
		// response.sendRedirect("hello.jsp");
		// 通过request.getRequestDispatcher方式，然后转发（forward），隐藏了请求地址
		
		// 如何将页面上请求的条件参数获取到 request.getParamter()方法来获取请求条件
		String username = request.getParameter("username");
		System.out.println(username);
		
		// 如何将处理后的数据 传递给新的响应页面 request.setAttribute
		request.setAttribute("user", username);
		
		request.getRequestDispatcher("hello.jsp").forward(request, response);
		// servlet执行顺序： 构造函数---》 init函数---> 请求方法（doGet\doPost\doPut\doDelete）---> doDestroy
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("执行了doPost函数...");
		doGet(request, response);
	}

}

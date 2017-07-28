package refresh.clock;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RefreshDemo extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*
		 * 之所以选择用servlet开头，是因为我有可能用他来校验用户信息，也就是说这个
		 * 方法本应该是post
		 * 这里我想实现的是提醒用户还剩几秒钟跳转，这里不能采用重定向，因为他会一直刷新
		 * 地址栏，这样给用户的体验十分不好，如果选择用转发，由于他本身会一直循环，所以是
		 * 不允许的
		 */
				request.getRequestDispatcher("/clock/refresh.jsp").forward(request, response);
	}

}

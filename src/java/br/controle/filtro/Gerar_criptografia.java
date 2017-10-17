package br.controle.filtro;

import classlibrary.MD5;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "Gerar_criptografia", servletNames = {"VerificarLogin"}, urlPatterns={"/index.jsp"})
public class Gerar_criptografia implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		try {
			HttpSession session = ((HttpServletRequest) request).getSession();
			String encryptedPassword = MD5.generateHash(request.getParameter("senha"));
			session.setAttribute("senha", encryptedPassword);
			chain.doFilter(request, response);
		} catch (Exception e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
			dispatcher.forward(request, response);
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

	@Override
	public void destroy() {

	}

}

package br.edu.ifgoiano.controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import br.edu.ifgoiano.entidade.Usuario;

@WebServlet("/cadastrarUsuario")
public class CadastroUsuarioServlet extends HttpServlet {
	
	private List<Usuario>lstDeUsuario;
	
	@Override
	public void init() throws ServletException {
		this.lstDeUsuario = new ArrayList<Usuario>();
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String senha1= req.getParameter("senha1");
		String senha2= req.getParameter("senha2");

		if(senha1.equals(senha2)) {
			Usuario usu = new Usuario ();
			usu.setNome(req.getParameter("nameCrud"));
			usu.setEmail(req.getParameter("email"));
			usu.setSenha(req.getParameter("senha1"));
			
			lstDeUsuario.add(usu);
			
			resp.sendRedirect("index.html");
		} else {
			req.getRequestDispatcher("cadastroUsuario.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		for (Usuario usuario : lstDeUsuario) {
			System.out.println(usuario.getNome().concat(" - ").concat(usuario.getEmail()));
		}
	}
	
	@Override
	public void destroy() {
	this.lstDeUsuario.clear();
	}
}

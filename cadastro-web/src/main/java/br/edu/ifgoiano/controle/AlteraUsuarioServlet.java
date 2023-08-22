package br.edu.ifgoiano.controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.edu.ifgoiano.entidade.Usuario;
import br.edu.ifgoiano.repositorio.UsuarioRepositorio;


@WebServlet("/alterarUsuario")
public class AlteraUsuarioServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.valueOf(req.getParameter("id"));
		
		String senha02 = req.getParameter("senha02");
		
		Usuario usuario = new Usuario();
		
		usuario.setId(id);
		usuario.setNome(req.getParameter("nome"));
		usuario.setEmail(req.getParameter("email"));
		usuario.setSenha(req.getParameter("senha01"));
		
		
		if (usuario.getSenha().equals(senha02)) {
			UsuarioRepositorio repositorio = new UsuarioRepositorio();
			repositorio.alterarUsuario(usuario);
			
			resp.sendRedirect("cadastrarUsuario");
		}else {
			String mensagem = usuario.getNome().concat(", as senhas informadas não são iguais!");
			
			req.setAttribute("mensagem", mensagem);
			req.setAttribute("usuario", usuario);
			
			req.getRequestDispatcher("usuarioAtualizar.jsp").forward(req, resp);
			
			
		}

		
		
		
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));
		
		UsuarioRepositorio repositorio = new UsuarioRepositorio();
		
		Usuario usuario = repositorio.obterUsuario(id);
		
		req.setAttribute("usuario", usuario);
		
		req.getRequestDispatcher("usuarioAtualizar.jsp").forward(req, resp);
		
	}
}

package gpago.view.servlet;

import gpago.view.ViewFacade;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	enum Operation {
		LIST_GREYHOUNDS, NEW_GREYHOUND, EDIT_GREYHOUND, UNKNOWN
	};

	public static final String OPERAION_NEW_GREYHOUND = "NEW";
	public static final String OPERAION_EDIT_GREYHOUND = "EDIT";
	public static final String OPERAION_UNKNOWN = "UNKNOWN";

	public static final String OPERAION_LIST_GREYHOUND_RESOURCE = "/WEB-INF/jsp/ManageGreyhounds.jsp";
	public static final String OPERAION_NEW_GREYHOUND_RESOURCE = "/WEB-INF/Greyhound.jsp";
	public static final String OPERAION_EDIT_GREYHOUND_RESOURCE = "/WEB-INF/Greyhound.jsp";

	private static final long serialVersionUID = 1L;
	
	private ViewFacade facade = new ViewFacade();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControllerServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Operation operation = getOperation(request.getParameter("operation"));

		
		String address = OPERAION_LIST_GREYHOUND_RESOURCE; // Default to listing greyhounds

		request.setAttribute("facade", facade);
		
		if (operation == Operation.NEW_GREYHOUND) {
			address = OPERAION_NEW_GREYHOUND_RESOURCE;
		} else if (operation == Operation.EDIT_GREYHOUND) {
			String greyhoundId = request.getParameter("GREYHOUND_ID");
			if ((greyhoundId != null) && (greyhoundId.length() > 0)) {

				address = OPERAION_EDIT_GREYHOUND_RESOURCE;
			}
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * Return an Operation (enum) based on a operation string specified.  If the string
	 * does not match any of the Operation enums, UNKNOWN will be returned.
	 * @param operationStr Operation as a string
	 * @return Operation that matches the string specified.
	 */
	private Operation getOperation(String operationStr) {
		if (operationStr == null)
			return Operation.LIST_GREYHOUNDS;
			
		switch (operationStr) {
		case OPERAION_NEW_GREYHOUND:
			return Operation.NEW_GREYHOUND;
		case OPERAION_EDIT_GREYHOUND:
			return Operation.NEW_GREYHOUND;
		default:
			return Operation.UNKNOWN;
		}
	}
}

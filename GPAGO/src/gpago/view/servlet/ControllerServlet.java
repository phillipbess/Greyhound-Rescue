package gpago.view.servlet;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;
import gpago.view.GreyhoundFormBean;
import gpago.view.ViewFacade;

import java.io.IOException;
import java.util.Map;
import java.util.logging.Logger;

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
	private static final Logger logger = Logger.getLogger(ControllerServlet.class.getName());
	
	public static final String OPERAION_NEW_GREYHOUND = "new";
	public static final String OPERAION_EDIT_GREYHOUND = "edit";
	public static final String OPERAION_UNKNOWN = "UNKNOWN";

	public static final String ADDRESS_LIST_GREYHOUNDS_URI = "/Greyhounds.jsp";
	public static final String ADDRESS_MANAGE_GREYHOUNDS_URI = "/WEB-INF/jsp/manageGreyhounds.jsp";
	public static final String ADDRESS_NEW_GREYHOUND_URI  = "/WEB-INF/jsp/editGreyhound.jsp";
	public static final String ADDRESS_EDIT_GREYHOUND_URI = "/WEB-INF/jsp/editGreyhound.jsp";
	public static final String ADDRESS_NOT_FOUND = "/WEB-INF/jsp/notFound.jsp";

	private static final long serialVersionUID = 1L;
	
	private ModelFacade facade = new ModelFacade();

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
		String uri = request.getRequestURI();
		logger.finest("URI: " + uri);
		
		String contextPath = request.getContextPath();
		logger.finest("Context Info: " + contextPath);
		
		String address = null;
		
		uri = uri.toLowerCase();
		
		if ((contextPath + "/view-greyhounds").equalsIgnoreCase(uri)) { // Then user is viewing greyhounds available for adoption.
			address = ADDRESS_LIST_GREYHOUNDS_URI;
			request.setAttribute("facade", new ViewFacade(facade)); // We use the view facade to tailor what is exposed to jsp.
		} else if ((contextPath + "/admin/manage-greyhounds").equalsIgnoreCase(uri)) {
			address = ADDRESS_MANAGE_GREYHOUNDS_URI;
			request.setAttribute("facade", new ViewFacade(facade)); // We use the view facade to tailor what is exposed to jsp.
		} else if ((contextPath + "/admin/new_greyhound").equalsIgnoreCase(uri)) {
			GreyhoundFormBean bean = new GreyhoundFormBean(new Greyhound());
			request.setAttribute("greyhound", bean);
			address = ADDRESS_NEW_GREYHOUND_URI;
		} else if ((contextPath + "/admin/update_greyhound").equalsIgnoreCase(uri)) {
			Greyhound greyhound = getGreyhound(request);

			if (greyhound!=null) {
				GreyhoundFormBean bean = new GreyhoundFormBean(greyhound);
				request.setAttribute("greyhound", bean);
				address = ADDRESS_EDIT_GREYHOUND_URI;
			} else {
				// A greyhound with the specified ID was not found or some error occurred, just display the manage greyhounds view.
				request.setAttribute("facade", new ViewFacade(facade)); // We use the view facade to tailor what is exposed to jsp.
				address = ADDRESS_MANAGE_GREYHOUNDS_URI;
			}
		} else {
			address = ADDRESS_NOT_FOUND;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	
	/**
	 * doPost is called when we are saving an entity (e.g. Greyhound, Sponsor).
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String address = null; // The uri to forward to.

		// If an id parameter exists, try to load a greyhound record for that id and initialize the greyhound object from the request parameters.
		Greyhound greyhound  = getGreyhound(request);
		
		if (greyhound==null) {
			// No id was specified (or a greyhound with that id was not found in the database)
			// Therefore, we're creating new greyhound. Create a new greyhound object and initialize from parameters			
			greyhound = new Greyhound();
			initFromRequest(request, greyhound);
		}
		
		// Wrap the greyhound object in a GreyhoundFormBean to be used by the jsp's.
		GreyhoundFormBean bean = new GreyhoundFormBean(greyhound);
		
		if (bean.isValid()) {
			logger.finest("Saving greyhound");
			facade.saveGreyhound(greyhound);

			// We're done adding or updating record, go back to manage greyhounds page.
			request.setAttribute("facade", new ViewFacade(facade)); // We use the view facade to tailor what is exposed to jsp.
			address = ADDRESS_MANAGE_GREYHOUNDS_URI;
			
		} else { // the greyhound is not valid.  Redisply the edit greyhound jsp.
			logger.finest("Invalid greyhound");
			
			address = ADDRESS_EDIT_GREYHOUND_URI;
			request.setAttribute("greyhound", bean);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	
	private Greyhound getGreyhound(HttpServletRequest request) {
		Greyhound greyhound = null;;

		Long id = getLongParameter(request, "id");
		
		if (id!=null) {
			greyhound = facade.getGreyhound(id);
			if (greyhound!=null) {
				initFromRequest(request, greyhound);
			}
		}
		return greyhound;
	}
		
	private void initFromRequest(HttpServletRequest request, Greyhound greyhound) {
		if (request.getParameter("name")!=null)
			greyhound.setName(request.getParameter("name"));
		if (request.getParameter("description")!=null)
			greyhound.setDescription(request.getParameter("description"));
	}

	private Long getLongParameter(HttpServletRequest request, String name) {
		String strValue =  request.getParameter(name);
		if (strValue!=null) {
			try {
				return Long.valueOf(strValue);
			} catch (Throwable ex) {
			}
		}
		return null;
	}
}

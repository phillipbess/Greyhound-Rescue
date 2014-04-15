package gpago.view.servlet;

import javax.servlet.http.HttpServletRequest;

public class ParamUtils {

	public static Long getLongParameter(HttpServletRequest request, String name) {
		String strValue =  request.getParameter(name);
		if (strValue!=null) {
			try {
				return Long.valueOf(strValue);
			} catch (Throwable ex) {
			}
		}
		return null;
	}
	
	/*
	 * Return the int value of the parameter name specified.
	 * Return -1 if the parameter value is not found or is not in a valid integer format.
	 */
	public static int getIntParameter(HttpServletRequest request, String name) {
		String strValue =  request.getParameter(name);
		if (strValue!=null) {
			try {
				return Integer.valueOf(strValue).intValue();
			} catch (Throwable ex) {
			}
		}
		return -1;
	}
}

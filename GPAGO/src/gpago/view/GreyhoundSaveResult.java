package gpago.view;

public class GreyhoundSaveResult {
	
	private boolean successful=false;
	private GreyhoundFormBean greyhoundBean;
	
	public GreyhoundSaveResult() {
		
	}
	
	public boolean isSuccessful() {
		return successful;
	}

	public void setSuccessful(boolean successful) {
		this.successful = successful;
	}

	public GreyhoundFormBean getGreyhoundBean() {
		return greyhoundBean;
	}

	public void setGreyhoundBean(GreyhoundFormBean greyhoundBean) {
		this.greyhoundBean = greyhoundBean;
	}
}

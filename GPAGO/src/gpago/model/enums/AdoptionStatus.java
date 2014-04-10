package gpago.model.enums;

public enum AdoptionStatus {
	
	AVAILABLE("Available"), PENDING("Pending"), ADOPTED("Adopted");

	private final String toString;

    private AdoptionStatus(String toString) {
         this.toString = toString;
    }

    public String toString(){
         return toString;
    }

}

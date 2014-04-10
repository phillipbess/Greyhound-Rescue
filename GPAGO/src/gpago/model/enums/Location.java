package gpago.model.enums;

public enum Location {

	KENNEL("Kennel"), FOSTER_HOME("Foster Home");

	private final String toString;

    private Location(String toString) {
         this.toString = toString;
    }

    public String toString(){
         return toString;
    }
    
}

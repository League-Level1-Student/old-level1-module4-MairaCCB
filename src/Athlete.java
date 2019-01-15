
public class Athlete {

	static int nextBibNumber;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
		this.bibNumber = nextBibNumber ++;
	}

	public static void main(String[] args) {
		// create two athletes //print their names, bibNumbers, and the location of
		// their race.
		Athlete a = new Athlete("Apple", 19);
		Athlete b = new Athlete("Banana", 1);
		
		
		
		System.out.println(a.name + " " + a.speed + " " + a.bibNumber + " " + raceLocation);
		System.out.println(b.name + " " + b.speed + " " + b.bibNumber + " " + raceLocation);

	}
}

// Q.3: Create a list of Days and remove one by one from the end of list.

void main() {
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  int length = days.length;

  print("Before: $days");

  for (int i = 0; i < length; i++) {
    days.removeLast();
  }

  print("After: $days");
}

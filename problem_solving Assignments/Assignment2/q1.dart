// Q.1: Create a list of names and print all names using list.

void main() {
  List<String> names = ["Muzammil", "Ahsan", "Sharjeel", "Bilal", "Sufiyan"];

  names.forEach((String name) {
    print("Name: $name");
  });
}

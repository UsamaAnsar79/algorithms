//
// Q12: Write a program to convert Celsius  to Fahrenheit   .
// i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32

void main() {
  double celsius = 40;
  double fahrenheit = 0;

  fahrenheit = (celsius * (9 / 5)) + 32;
  print("$celsius'C is $fahrenheit'F");
}

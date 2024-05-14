//   Q.3: A student will not be allowed to sit in exam if
//   his/her attendance is less than 75%.
//   Create integer variables and assign value:
//    Number of classes held = 16,
//    Number of classes attended = 10,
//    and print percentage of class attended.
//    Is student is allowed to sit in exam or not?

void main() {
  double attendance = (10 / 16) * 100;

  if (attendance < 75) {
    print("Attendance: $attendance");
    print(
        "You're not to allowed to sit in exam, \nyour attendance $attendance% is less than 75%");
  }
}

// Q18. Write a program that asks the user for their email and password. You
// are given a list of predefined user credentials (email and password
// combinations). If the entered email and password match any of the
// credentials in the list, print "User login successful." Otherwise, keep
// asking for the email and password until the correct credentials are
// provided.

import 'dart:io';

void main() {
  void loginUser() {
    String dbEmail = "muzammil@gmail.com";
    String dbPassword = "abc123";

    var map = {
      "muzammil@gmail.com": "abc123",
      "bilal@gmail.com": "test123",
    };

    bool keepAsking = true;
    while (keepAsking) {
      ///Email
      stdout.write("What is your email?\n");
      String? readEmail = stdin.readLineSync();

      ///Password
      stdout.write("What is your password?\n");
      String? readPassword = stdin.readLineSync();

      if (!map.containsKey(readEmail)) {
        print("Not found");
        continue;
      }

      if (readEmail == dbEmail && readPassword == dbPassword) {
        print("Login Successful");
        keepAsking = false;
      } else {
        print("Login Unsuccessful, again enter");
      }
    }
  }

  loginUser();
}

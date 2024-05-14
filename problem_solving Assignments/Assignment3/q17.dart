// Q17. Write a program that asks the user for their email and password.
//If the email and password match a predefined set of credentials,
// print "User login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.

import 'dart:io';

void main() {
  void loginUser() {
    String dbEmail = "muzammil@gmail.com";
    String dbPassword = "abc123";

    bool keepAsking = true;
    while (keepAsking) {
      ///Email
      stdout.write("What is your email?\n");
      String? readEmail = stdin.readLineSync();

      ///Password
      stdout.write("What is your password?\n");
      String? readPassword = stdin.readLineSync();

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

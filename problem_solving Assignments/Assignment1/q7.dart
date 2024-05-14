// Q.7: Write a program to calculate and
//   print the Electricity bill of a given customer.
//   Create variable for customer id, name, unit consumed by the user,
//   bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

void main() {
  int customerId = 101;
  String name = "Muzammil";
  int unitConsumed = 800;
  double billAmount = 0;
  double unitRate = 0;

  if (unitConsumed >= 600) {
    unitRate = 2.00;
    billAmount = unitConsumed * unitRate;
  } else if (unitConsumed >= 400 && unitConsumed < 600) {
    unitRate = 1.80;
    billAmount = unitConsumed * unitRate;
  } else if (unitConsumed >= 200 && unitConsumed < 400) {
    unitRate = 1.50;
    billAmount = unitConsumed * unitRate;
  } else if (unitConsumed >= 0 && unitConsumed <= 199) {
    unitRate = 1.20;
    billAmount = unitConsumed * unitRate;
  }

  print("Customer IDNO :$customerId");
  print("Customer Name :$name");
  print("Unit Consumed :$unitConsumed");
  print(
      "Amount Charges @Rs. ${unitRate.toStringAsFixed(2)} per unit : $billAmount");
  print("Net Bill Amount : $billAmount");
}

// Q.19: Given a map representing a product with
// keys "name", "price", and "quantity", write Dart code to check if the product is in stock.
// If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

void main() {
  Map<String, dynamic> map = {"name": "Shirt", "price": 100, "quantity": 1};

  ///To check its in stock
  if (map["quantity"] > 0) {
    print("In stock");
  } else {
    print("Out of stock");
  }
}

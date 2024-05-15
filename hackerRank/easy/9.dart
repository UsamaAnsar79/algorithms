//Two friends like to pool their money and go to the ice cream parlor. They always choose two distinct flavors and they spend all of their money.

//Given a list of prices for the flavors of ice cream, select the two that will cost all of the money they have.
 
 List<int> findFlavors(List<int> prices, int money) {
  // Create a list of tuples containing (price, index)
  List<List<int>> priceIndices = [];
  for (int i = 0; i < prices.length; i++) {
    priceIndices.add([prices[i], i + 1]);
  }
  
  // Sort the list based on price
  priceIndices.sort((a, b) => a[0].compareTo(b[0]));
  
  // Use two pointers to find the two flavors
  int left = 0;
  int right = priceIndices.length - 1;
  while (left < right) {
    int totalCost = priceIndices[left][0] + priceIndices[right][0];
    if (totalCost == money) {
      return [priceIndices[left][1], priceIndices[right][1]];
    } else if (totalCost < money) {
      left++;
    } else {
      right--;
    }
  }
  
  // If no solution is found
  return [];
}

void main() {
  List<int> prices = [2, 5, 7, 8, 10];
  int money = 15;

  List<int> flavors = findFlavors(prices, money);
  
  if (flavors.isNotEmpty) {
    print('Flavors to choose: ${flavors[0]} and ${flavors[1]}');
  } else {
    print('No two flavors found with the given budget.');
  }
}

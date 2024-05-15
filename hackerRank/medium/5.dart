//minimum loss

int minimumLoss(List<int> prices) {
  // Create a list of lists where each inner list contains the price and its original index
  List<List<int>> indexedPrices = [];
  for (int i = 0; i < prices.length; i++) {
    indexedPrices.add([prices[i], i]);
    print("id:${indexedPrices}");
  }

  // Sort the list of lists based on the price in ascending order
  indexedPrices.sort((a, b) => a[0].compareTo(b[0]));
  print("idx:${indexedPrices}");

  int minLoss = 1<<30;
  print("minloss:${minLoss}"); 
  for (int i = 1; i < indexedPrices.length; i++) {
    // Calculate the loss between adjacent prices
    int loss = indexedPrices[i][0] - indexedPrices[i - 1][0];
    print("loss:${loss}");
    // Check if the loss is smaller than the current minimum loss and the two prices are not in the same year
    if (loss < minLoss && indexedPrices[i][1] < indexedPrices[i - 1][1]) {
      minLoss = loss;
      print("min:${minLoss}");
    }
  }

  return minLoss;
}

void main() {
  // Example input
  List<int> prices1 = [5, 10, 3];
  List<int> prices2 = [20, 7, 8, 2, 5];

  // Calculate minimum loss
  int result1 = minimumLoss(prices1);
  int result2 = minimumLoss(prices2);

 
  print(result1); 
  print(result2); 
}

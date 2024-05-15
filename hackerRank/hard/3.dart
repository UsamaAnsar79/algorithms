import 'dart:math';

int maximumTotal(List<List<int>> cities, int xDiff, int yDiff) {
  // Sort cities by x-coordinate
  cities.sort((a, b) => a[0].compareTo(b[0]));

  int n = cities.length;
  List<int> dp = List<int>.filled(n, 0);

  for (int i = 0; i < n; i++) {
    dp[i] = cities[i][3]; // Initialize with the current city's value

    for (int j = 0; j < i; j++) {
      if ((cities[i][0] - cities[j][0]).abs() <= xDiff && (cities[i][1] - cities[j][1]).abs() <= yDiff) {
        dp[i] = max(dp[i], dp[j] + cities[i][3]);
      }
    }
  }
  return dp.reduce(max);
}

void main() {
  int xDiff = 1;
  int yDiff = 1;
  List<List<int>> cities = [
    [1, 1, 1, 3],
    [2, 2, 2, -1],
    [3, 3, 3, 3]
  ];
  print(maximumTotal(cities, xDiff, yDiff)); 
}

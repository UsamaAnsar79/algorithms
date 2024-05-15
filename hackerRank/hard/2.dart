import 'dart:math';

int maximumSum(List<int> a, int m) {
  int n = a.length;
  Set<int> prefixSet = {0}; // Include 0 to handle the case where the entire array's sum % m is maximum
  int prefixSum = 0;
  int maxModulo = 0;

  for (int i = 0; i < n; i++) {
    prefixSum = (prefixSum + a[i]) % m;
    maxModulo = max(maxModulo, prefixSum);

    // Find the smallest prefixSum greater than prefixSum
    int it = prefixSet.firstWhere((element) => element > prefixSum, orElse: () => 0);
    if (it != 0) {
      maxModulo = max(maxModulo, prefixSum - it + m);
    }

    prefixSet.add(prefixSum);
  }

  return maxModulo;
}

void main() {
  List<List<int>> queries = [
    [3, 3, 9, 9, 5]
  ];
  int m = 7;
  for (List<int> query in queries) {
    print(maximumSum(query, m));
  }
}



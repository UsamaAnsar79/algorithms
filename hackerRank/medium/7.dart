import 'dart:math';

int minDifference = 1 << 30;

// Perform depth-first traversal to calculate subtree sums and find minimum difference
void dfs(List<List<int>> tree, List<int> data, int node, int parent, int totalSum) {
  // Calculate sum of subtree rooted at current node
  int subtreeSum = data[node - 1];
  print("subtree:${subtreeSum}");
  for (int child in tree[node]) {
    print("child:$child");
    if (child != parent) {
      dfs(tree, data, child, node, totalSum);
      subtreeSum += data[child - 1];
      print("stream:${subtreeSum}");
    }
  }
  
  // If not at the root, calculate difference when cutting edge from parent to current node
  if (parent != -1) {
    minDifference = min(minDifference, (totalSum - 2 * subtreeSum).abs());
  }
}

// Function to calculate minimum difference of tree sums after cutting one edge
int cutTheTree(int n, List<int> data, List<List<int>> edges) {
  // Create adjacency list representation of the tree
  List<List<int>> tree = List.generate(n + 1, (_) => []);
  for (var edge in edges) {
    int u = edge[0], v = edge[1];
    tree[u].add(v);
    tree[v].add(u);
  }
  
  // Calculate total sum of the entire tree
  int totalSum = data.reduce((value, element) => value + element);

  // Perform depth-first traversal starting from root node 1
  dfs(tree, data, 1, -1, totalSum);
  
  return minDifference;
}

void main() {
  // Sample input
  int n = 6;
  List<int> data = [100, 200, 100, 500, 100, 600];
  List<List<int>> edges = [
    [1, 2], [2, 3], [2, 5], [4, 5], [5, 6]
  ];

  // Calculate the minimum difference
  int result = cutTheTree(n, data, edges);
  print(result); // Output: 400
}


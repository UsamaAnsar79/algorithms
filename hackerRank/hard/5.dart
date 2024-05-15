import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync()!.split(' ');
  int n = int.parse(inputs[0]);
  int k = int.parse(inputs[1]);

  List<List<int>> edges = [];
  for (int i = 0; i < n - 1; i++) {
    List<int> edge = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    edges.add(edge);
    print("e:${edges}");
  }

  Map<int, List<int>> tree = buildTree(edges);
  print(tree);

  int similarPairsCount = countSimilarPairs(tree, k);
  print(similarPairsCount);
}

Map<int, List<int>> buildTree(List<List<int>> edges) {
  Map<int, List<int>> tree = {};
  for (List<int> edge in edges) {
    int parent = edge[0];
    int child = edge[1];

    tree.putIfAbsent(parent, () => []);
    tree.putIfAbsent(child, () => []);

    tree[parent]!.add(child);
  }
  return tree;
}

int countSimilarPairs(Map<int, List<int>> tree, int k) {
  int count = 0;
  for (int node in tree.keys) {
    count += dfs(tree, node, node, k);
  }
  return count;
}

int dfs(Map<int, List<int>> tree, int node, int ancestor, int k) {
  int count = 0;
  for (int child in tree[node]!) {
    count += dfs(tree, child, ancestor, k);
    if ((ancestor - child).abs() <= k) { 
      count++;
    }
  }
  return count;
}




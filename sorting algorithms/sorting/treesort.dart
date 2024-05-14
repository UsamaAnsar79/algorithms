// TreeNode class definition
class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.data);
}

// Rest of the Tree Sort implementation
List<int> treeSort(List<int> arr) {
  TreeNode? insert(TreeNode? root, int data) {
    if (root == null) {
      return TreeNode(data);
    }
    if (data < root.data) {
      root.left = insert(root.left, data);
    } else if (data > root.data) {
      root.right = insert(root.right, data);
    }
    return root;
  }

  List<int> inOrder(TreeNode? node, List<int> sortedList) {
    if (node != null) {
      inOrder(node.left, sortedList);
      sortedList.add(node.data);
      inOrder(node.right, sortedList);
    }
    return sortedList;
  }

  TreeNode? root;
  for (int i = 0; i < arr.length; i++) {
    root = insert(root, arr[i]);
  }

  List<int> sortedList = [];
  inOrder(root, sortedList);
  return sortedList;
}

void main() {
  List<int> arr = [5, 2, 8, 1, 3, 7, 4, 6]; // Example input list
  print("Original array: $arr");

  List<int> sortedArr = treeSort(arr); // Sort the array using Tree Sort
  print("Sorted array: $sortedArr");
}

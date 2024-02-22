//two friends like to pool their money and go to the ice cream parlor. They always choose two distinct flavors and they spend all of their money.

//Given a list of prices for the flavors of ice cream, select the two that will cost all of the money they have.

List<int> icecreamParlor(int m, List<int> cost) {
  for (int i = 0; i < cost.length; i++) {
    for (int j = i + 1; j < cost.length; j++) {
      if (cost[i] + cost[j] == m) {
        return [i, j]; 
      }
    }
  }
  throw Exception('No suitable flavors found');
}

void main() {
  int m = 9;
  List<int> cost = [1, 4, 5, 3, 2]; 
  List<int> indices = icecreamParlor(m, cost);
  print(indices);  
}

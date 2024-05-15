import 'dart:io';

void main() {
  // Read input
  var input = stdin.readLineSync()!.split(' ');
  var numPairs = int.parse(input[0]);
  var circumference = int.parse(input[1]);

  // Initialize maximum distance
  var maxDistance = 0;

  // Process each pair of points
  for (var i = 0; i < numPairs; i++) {
    var pair = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    var point1 = pair[0];
    var point2 = pair[1];

    // Calculate distance between points
    var distance = (point2 - point1).abs();

    // Update maximum distance if necessary
    if (distance > maxDistance) {
      maxDistance = distance;
    }
  }

  // Print the maximum distance
  print(maxDistance > circumference / 2 ? maxDistance : 0);
}





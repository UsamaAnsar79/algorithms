import 'dart:io';

double findMedian(List<int> expenditures, int d) {
  // Sort the expenditures array
  expenditures.sort();

  // Calculate the middle index or indices
  int mid1 = (d - 1) ~/ 2;
  int mid2 = d ~/ 2;

  // If d is odd, return the single middle value
  if (d % 2 == 1) {
    return expenditures[mid1].toDouble();
  }
  // If d is even, return the average of the two middle values
  else {
    return (expenditures[mid1] + expenditures[mid2]) / 2.0;
  }
}

int activityNotifications(List<int> expenditure, int d) {
  int notifications = 0;

  for (int i = d; i < expenditure.length; i++) {
    double median = findMedian(expenditure.sublist(i - d, i), d);

    if (expenditure[i] >= median * 2) {
      notifications++;
    }
  }

  return notifications;
}

void main() {
  List<int> expenditure = [2, 3, 4, 2, 3, 6, 8, 4, 5];
  int d = 5;

  int result = activityNotifications(expenditure, d);

  print("The user receive the notification $result times"); 
}

//HackerLand National Bank has a simple policy for warning clients about possible fraudulent account activity. If the amount spent by a client on a particular day is greater than or equal to  the client's median spending for a trailing number of days, they send the client a notification about potential fraud. The bank doesn't send the client any notifications until they have at least that trailing number of prior days' transaction data.

//Given the number of trailing days  and a client's total daily expenditures for a period of  days, determine the number of times the client will receive a notification over all  days.

fmedian(List<int> cost,int d){
  cost.sort();
  int mid=(d-1)~/2;
  if(d%2==1){
    return cost[mid].toDouble();
  }
}
int notification(List<int> cost,int d){
  int notify=0;
  for(int i=d;i<cost.length;i++){
    double median = fmedian(cost.sublist(i-d,i), d);
    print(median);
    
    if(cost[i]>= median*2){
      notify++;
    }
  }
  return notify;
}
void main() {
  List<int> expenditure = [2, 3, 4, 2, 3, 6, 8, 4, 5];
  int d = 5;

  int result = notification(expenditure, d);

  print("The user receive the notification $result times"); 
}

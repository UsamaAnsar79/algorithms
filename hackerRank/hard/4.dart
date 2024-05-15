import 'dart:io';
import 'dart:math';

int minimumPasses(int m, int w, int p, int n) {
  int days = 0;
  int candies = 0;
  int answer = (n / (m * w)).ceil(); //4
 

  while (days < answer) {
    if (p > candies) {
      int daysNeeded = ((p - candies) / (m * w)).ceil(); // 1
    
      candies += daysNeeded * m * w; // 3
      
      days += daysNeeded;  // 1
     
    }

    int diff = (m - w).abs();  // 2 or 1
   
    int available = candies ~/ p; //1 0r 3 
    
    int purchased = min(diff, available); // 1 or 1
   

    if (m < w) {
      m += purchased;
    } else {
      w += purchased;
    }

    int rest = available - purchased; // 0 or 2
    
    m += rest ~/ 2;  // 3 or 4
    print("m:${m}"); 
    w += rest - rest ~/ 2; // 2 or 4
    print("w:${w}");

    candies -= available * p;
    print("c:${candies}"); //1

    candies += m * w;
    print("cand:${candies}");  // 7 0r 17
    days++;
    

    int remainingCandies = max(n - candies, 0); // 5 or 0
    
    answer = min(answer, days + (remainingCandies / (m * w)).ceil()); // 3
   
  }

  return answer;
}

void main() {
  List<String> mwpn = stdin.readLineSync()!.split(' ');
  int m = int.parse(mwpn[0]);
  int w = int.parse(mwpn[1]);
  int p = int.parse(mwpn[2]);
  int n = int.parse(mwpn[3]);

  int result = minimumPasses(m, w, p, n);
  print(result);
}









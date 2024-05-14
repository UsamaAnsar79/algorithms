// Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void main() {
  var map = {"name": "Muzammil", "phone": "090078601"};

  List length4Keys = [];

  map.keys.forEach((element) {
    if (element.length == 4) {
      length4Keys.add(element);
    }
  });

  print("Length 4 keys: $length4Keys");
}

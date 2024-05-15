int gridlandMetro(int n, int m, int k, List<List<int>> track) {
  List<List<List<int>>> trackRows = List.generate(n, (index) => []);

  for (List<int> rowTrack in track) {
    int row = rowTrack[0] - 1; // Adjusting for 0-based indexing
    trackRows[row].add([rowTrack[1], rowTrack[2]]);
  }

  int totalUnoccupiedCells = n * m;

  for (List<List<int>> rowTracks in trackRows) {
    if (rowTracks.isEmpty) continue; // Skip empty rows

    rowTracks.sort((a, b) => a[0].compareTo(b[0]));

    List<List<int>> mergedTracks = [rowTracks[0]];

    for (int i = 1; i < rowTracks.length; i++) {
      List<int> currentTrack = rowTracks[i];
      List<int> lastMergedTrack = mergedTracks.last;

      int start = currentTrack[0];
      int end = currentTrack[1];
      int lastEnd = lastMergedTrack[1];

      if (start <= lastEnd) {
        lastMergedTrack[1] = (lastEnd > end) ? lastEnd : end;
      } else {
        mergedTracks.add(currentTrack);
      }
    }

    for (List<int> mergedTrack in mergedTracks) {
      totalUnoccupiedCells -= (mergedTrack[1] - mergedTrack[0] + 1);
    }
  }

  // Ensure totalUnoccupiedCells is non-negative
  return totalUnoccupiedCells < 0 ? 0 : totalUnoccupiedCells;
}

void main() {
  int n = 4;
  int m = 4;
  int k = 3;
  List<List<int>> track = [
    [2, 2, 3],
    [3, 1, 4],
    [4, 4, 4]
  ];

  print(gridlandMetro(n, m, k, track)); 
}




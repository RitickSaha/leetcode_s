class SolutionNo4 {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> merged = <int>[].mergeSort(nums1, nums2);
    var arrayLength = (merged.length / 2).floorToDouble().toInt();
    if (merged.isEmpty) {
      return 0;
    }
    if (merged.length % 2 == 0) {
      return (merged[arrayLength - 1] + merged[arrayLength]) / 2;
    } else {
      return (merged[arrayLength]).toDouble();
    }
  }
}

extension on List<int> {
  List<int> mergeSort(List<int> sa1, List<int> sa2) {
    clear();
    while (sa1.isNotEmpty && sa2.isNotEmpty) {
      if (sa1.first < sa2.first) {
        add(sa1.first);
        sa1.removeAt(0);
      } else {
        add(sa2.first);
        sa2.removeAt(0);
      }
    }
    if (sa1.isNotEmpty) {
      addAll(sa1);
    } else {
      addAll(sa2);
    }
    return this;
  }
}

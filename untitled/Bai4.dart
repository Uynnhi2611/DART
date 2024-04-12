void main() {
  // Khởi tạo danh sách cố định
  List<int> distances = [12, 4, 6, 9, 7, 14];

  // Kiểm tra điều kiện cho n
  if (distances.length <= 1 || distances.length > 106) {
    print('Giá trị của n không hợp lệ. Hãy đảm bảo rằng 1 < n <= 106.');
    return;
  }

  // Kiểm tra điều kiện cho các phần tử trong danh sách
  for (int i = 0; i < distances.length; i++) {
    if (distances[i] <= 1 || distances[i] > 109) {
      print('Giá trị của d${i+1} không hợp lệ. Hãy đảm bảo rằng 1 < d${i+1} <= 109.');
      return;
    }
  }

  // Sắp xếp danh sách theo thứ tự tăng dần
  distances.sort();

  // Tính độ lệch giữa hai số đầu tiên trong danh sách đã sắp xếp và gán cho biến minDifference
  int minDifference = distances[1] - distances[0];

  // Duyệt qua từng cặp số liền kề trong danh sách từ vị trí thứ 2 trở đi
  for (int i = 2; i < distances.length; i++) {
    // Tính độ lệch giữa số hiện tại và số trước đó
    int currentDifference = distances[i] - distances[i - 1];

    // Nếu độ lệch hiện tại nhỏ hơn độ lệch nhỏ nhất đã tìm được, cập nhật độ lệch nhỏ nhất
    if (currentDifference < minDifference) {
      minDifference = currentDifference;
    }
  }

  // In độ lệch nhỏ nhất ra màn hình
  print('Độ lệch nhỏ nhất: $minDifference');
}

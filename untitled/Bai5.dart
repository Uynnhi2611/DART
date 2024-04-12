import 'dart:collection'; // Import thư viện collection của Dart để sử dụng Queue
import 'dart:io'; // Import thư viện I/O của Dart để sử dụng các hàm liên quan đến nhập/xuất dữ liệu

void main() {

  // Khởi tạo một danh sách các cặp số nguyên biểu diễn thời điểm bắt đầu và kết thúc của mỗi cuộc thi
  List<List<int>> contests = [
    [0, 2],
    [1, 2],
    [3, 4],
    [2, 5],
    [4, 5]
  ];

  // Sắp xếp danh sách các cuộc thi theo thời điểm bắt đầu
  contests.sort((a, b) => a[0].compareTo(b[0]));

  // Khởi tạo một hàng đợi để theo dõi thời điểm kết thúc của các cuộc thi hiện tại
  Queue<int> rooms = Queue();
  rooms.add(contests[0][1]);

  // Duyệt qua từng cuộc thi từ thứ hai trở đi
  for (int i = 1; i < contests.length; i++) {
    // Nếu thời điểm bắt đầu của cuộc thi hiện tại lớn hơn hoặc bằng thời điểm kết thúc sớm nhất của các cuộc thi hiện tại
    if (contests[i][0] >= rooms.first) {
      // Loại bỏ cuộc thi có thời điểm kết thúc sớm nhất khỏi hàng đợi
      rooms.removeFirst();
    }
    // Thêm thời điểm kết thúc của cuộc thi hiện tại vào hàng đợi
    rooms.add(contests[i][1]);
    // Sắp xếp lại hàng đợi theo thời điểm kết thúc
    rooms = Queue<int>.from(rooms.toList()..sort());
  }

  // Ghi số phòng thi ít nhất cần cho các cuộc thi vào file ROOMS.OUT
  File('ROOMS.OUT').writeAsStringSync('Số phòng ít nhất cần cho các cuộc thi: ${rooms.length}');
}

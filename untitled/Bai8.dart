// Hàm này nhận vào các giá trị đầu và cuối của một khoảng sử dụng điện, các mức giá a, b, c và các giới hạn limit1, limit2
int calculateCost(int start, int end, int a, int b, int c, int limit1, int limit2) {
  // Tính tổng số KWh đã sử dụng
  int usage = end - start;
  // Nếu không có sử dụng điện, trả về 0
  if (usage <= 0) return 0;
  // Nếu sử dụng không vượt quá giới hạn đầu tiên, tính theo mức giá a
  if (usage <= limit1) return usage * a;
  // Nếu sử dụng không vượt quá giới hạn thứ hai, tính phần đầu theo mức giá a, phần còn lại theo mức giá b
  if (usage <= limit2) return limit1 * a + (usage - limit1) * b;
  // Nếu sử dụng vượt quá giới hạn thứ hai, tính phần đầu theo mức giá a, phần giữa theo mức giá b, phần còn lại theo mức giá c
  return limit1 * a + (limit2 - limit1) * b + (usage - limit2) * c;
}


void main() {
  // Khởi tạo danh sách các chỉ số đầu và cuối của các loại điện
  List<int> readings = [10, 150, 50, 1000, 100, 300];
  // Khởi tạo danh sách các mức giá cho mỗi loại điện
  List<int> prices = [2, 3, 4, 3, 4, 5, 4, 5, 6];
  // Khởi tạo danh sách các giới hạn sử dụng cho mỗi loại điện
  List<int> limits = [50, 150, 200, 1000, 100, 200];

  // Khởi tạo biến tổng số tiền phải trả
  int total = 0;
  // Lặp qua từng loại điện
  for (int i = 0; i < 3; i++) {
    // Tính chi phí cho mỗi loại điện và cộng vào tổng số tiền
    total += calculateCost(readings[i*2], readings[i*2+1], prices[i*3], prices[i*3+1], prices[i*3+2], limits[i*2], limits[i*2+1]);
  }

  // In ra tổng số tiền phải trả
  print(total);
}

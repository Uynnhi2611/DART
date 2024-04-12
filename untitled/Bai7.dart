// Hàm này nhận vào một chuỗi số 'n' và một tập hợp 'set'
void divisibleByThree(String n, Set<int> set) {
  // Nếu chuỗi số 'n' rỗng, hàm sẽ kết thúc
  if (n.isEmpty) return;
  // Chuyển đổi chuỗi số 'n' thành số nguyên 'num'
  int num = int.parse(n);
  // Kiểm tra xem 'num' có chia hết cho 3 và khác 0 hay không
  if (num % 3 == 0 && num != 0) {
    // Nếu 'num' chia hết cho 3 và khác 0, thêm 'num' vào tập hợp 'set'
    set.add(num);
  }
  // Lặp qua từng chữ số trong chuỗi số 'n'
  for (int i = 0; i < n.length; i++) {
    // Tạo một chuỗi số mới bằng cách xóa chữ số tại vị trí 'i'
    String newNum = n.substring(0, i) + n.substring(i + 1);
    // Gọi đệ quy hàm 'divisibleByThree' với chuỗi số mới và tập hợp 'set'
    divisibleByThree(newNum, set);
  }
}


void main() {
  // Khởi tạo chuỗi số 'n'
  String n = "12345";
  // Khởi tạo tập hợp rỗng 'set'
  Set<int> set = {};
  // Gọi hàm 'divisibleByThree' với chuỗi số 'n' và tập hợp 'set'
  divisibleByThree(n, set);
  // In ra các số trong tập hợp 'set' chia hết cho 3
  print("Các số chia hết cho 3: ${set.join(", ")}");
  // In ra số lượng số trong tập hợp 'set' chia hết cho 3
  print("Số lượng số chia hết cho 3: ${set.length}");
}

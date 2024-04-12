void main() {
  List<int> countEvenDivisibleByThree(int start, int end) { // Đây là một hàm nhận hai số nguyên làm đối số và trả về một danh sách các số nguyên.
    int count = 0; // Khởi tạo biến 'count' bằng 0. Biến này sẽ theo dõi số lượng các số chia hết cho 2 và 3.
    int sum = 0; // Khởi tạo biến 'sum' bằng 0. Biến này sẽ theo dõi tổng của các số chia hết cho 2 và 3.
    for (int i = start; i <= end; i++) { // Một vòng lặp for bắt đầu từ 'start' và đi đến 'end'.
      if (i % 2 == 0 && i % 3 == 0) { // Nếu số hiện tại 'i' vừa chia hết cho 2 (i % 2 == 0) và chia hết cho 3 (i % 3 == 0)
        count++; // tăng biến đếm lên 1
        sum += i; // cộng số hiện tại 'i' vào tổng
      }
    }
    return [count, sum]; // Trả về một danh sách chứa số lượng và tổng
  }

  int startRange = 1; // Đặt phạm vi bắt đầu là 1
  int endRange = 100; // Đặt phạm vi kết thúc là 100
  List<int> result = countEvenDivisibleByThree(startRange, endRange); // Gọi hàm 'countEvenDivisibleByThree' với 'startRange' và 'endRange' làm đối số và lưu kết quả vào 'result'
  print('Số lượng các số chẵn chia hết cho 3 từ $startRange đến $endRange là: ${result[0]}'); // In ra số lượng các số chẵn chia hết cho 3 trong phạm vi
  print('Tổng của các số chẵn chia hết cho 3 từ $startRange đến $endRange là: ${result[1]}'); // In ra tổng của các số chẵn chia hết cho 3 trong phạm vi
}

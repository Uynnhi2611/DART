
// Hàm tìm số lớn thứ nhì trong danh sách
int secondLargest(List<int> numbers) {
  int first = 0, second = 0; // Khởi tạo hai biến để lưu giữ số lớn nhất và số lớn thứ nhì
  for (int n in numbers) { // Duyệt qua từng số trong danh sách
    if (n > first) { // Nếu số hiện tại lớn hơn số lớn nhất
      second = first; // Cập nhật số lớn thứ nhì là số lớn nhất cũ
      first = n; // Cập nhật số lớn nhất là số hiện tại
    } else if (n < first && n > second) { // Nếu số hiện tại nhỏ hơn số lớn nhất và lớn hơn số lớn thứ nhì
      second = n; // Cập nhật số lớn thứ nhì là số hiện tại
    }
  }
  return second; // Trả về số lớn thứ nhì
}

// Hàm kiểm tra số nguyên tố
bool isPrime(int n) {
  if (n < 2) { // Nếu số nhỏ hơn 2 thì không phải số nguyên tố
    return false;
  }
  for (int i = 2; i * i <= n; i++) { // Duyệt từ 2 đến căn bậc hai của số
    if (n % i == 0) { // Nếu số chia hết cho i thì không phải số nguyên tố
      return false;
    }
  }
  return true; // Nếu không chia hết cho bất kỳ số nào thì là số nguyên tố
}

// Hàm tính giai thừa
int factorial(int n) {
  if (n == 0) { // Nếu n bằng 0 thì giai thừa là 1
    return 1;
  } else { // Ngược lại, tính giai thừa bằng đệ quy
    return n * factorial(n - 1);
  }
}

// Hàm tính số Fibonacci thứ n
int fibonacci(int n) {
  if (n <= 0) { // Nếu n không phải số nguyên dương thì báo lỗi
    throw Exception("Input should be positive integer");
  } else if (n == 1) { // Số Fibonacci thứ 1 là 0
    return 0;
  } else if (n == 2) { // Số Fibonacci thứ 2 là 1
    return 1;
  } else { // Ngược lại, tính số Fibonacci bằng cách cộng hai số trước đó
    int a = 0, b = 1;
    for (int i = 2; i < n; i++) { // Duyệt từ 2 đến n
      int temp = a; // Lưu giữ số Fibonacci trước đó
      a = b; // Cập nhật số Fibonacci hiện tại
      b = temp + b; // Tính số Fibonacci tiếp theo
    }
    return b; // Trả về số Fibonacci thứ n
  }
}

void main() {
  List<int> numbers = [10,11,15,20,25,3]; // Khai báo danh sách số
  int num = secondLargest(numbers); // Tìm số lớn thứ nhì

  if (num != null) { // Nếu tìm thấy số lớn thứ nhì
    print("Số lớn thứ nhì trong dãy là: $num"); // In số lớn thứ nhì
    print(num % 2 == 0 ? "Chẵn" : "Lẻ"); // Kiểm tra và in tính chẵn lẻ
    print(isPrime(num) ? "Số nguyên tố" : "Không phải số nguyên tố"); // Kiểm tra và in số nguyên tố
    print("Giai thừa của $num là: ${factorial(num)}"); // Tính và in giai thừa
    print("Số Fibonacci thứ $num là: ${fibonacci(num)}"); // Tính và in số Fibonacci
  } else { // Nếu không tìm thấy số lớn thứ nhì
    print("Không"); // In "Không"
  }
}

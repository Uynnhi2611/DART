String decodeSequence(String encoded) {
  // Hàm này nhận vào một chuỗi 'encoded' và sẽ giải mã nó.

  // Kiểm tra điều kiện không quá 9 chữ số liên tiếp giống nhau
  for (int i = 0; i < encoded.length; i++) {
    // Vòng lặp này kiểm tra từng phần của chuỗi 'encoded'.
    if (i + 9 < encoded.length && encoded.substring(i, i + 10).split('').toSet().length == 1) {
      // Nếu tìm thấy hơn 9 chữ số liên tiếp giống nhau, trả về chuỗi rỗng.
      return '';
    }
  }

  // Nếu chuỗi 'encoded' có độ dài nhỏ hơn hoặc bằng 3 hoặc lớn hơn 200, trả về nguyên chuỗi.
  if (encoded.length <= 3 || encoded.length > 200) {
    return encoded; // Điều kiện dừng của đệ quy
  }

  String decoded = ''; // Khởi tạo một chuỗi rỗng để chứa kết quả giải mã.
  int i = 0; // Khởi tạo biến đếm i để duyệt qua chuỗi 'encoded'.

  // Vòng lặp này sẽ duyệt qua từng ký tự của chuỗi 'encoded'.
  while (i < encoded.length) {
    int count = int.parse(encoded[i++]); // Chuyển đổi ký tự tiếp theo thành số và tăng i lên 1.
    String digit = encoded[i++]; // Lấy ký tự tiếp theo (chữ số) và tăng i lên 1.

    // Thêm chữ số 'digit' vào chuỗi 'decoded' 'count' lần.
    for (int j = 0; j < count; j++) {
      decoded += digit;
    }
  }

  // Kiểm tra độ dài của chuỗi giải mã
  if (decoded.length > 200) {
    // Nếu chuỗi giải mã dài hơn 200 ký tự, trả về chuỗi rỗng.
    return '';
  }

  // Gọi đệ quy hàm 'decodeSequence' với chuỗi mới đã giải mã.
  return decodeSequence(decoded);
}

String findOriginalNumber(String N) {
  // Hàm này nhận vào số N và tìm số M gốc.

  String M = decodeSequence(N); // Gọi hàm giải mã với số N.
  if (M.isEmpty) {
    // Nếu không tìm thấy số M hợp lệ, thông báo và trả về chuỗi rỗng.
    print('Không tìm thấy số M hợp lệ.');
    return '';
  }
  // Trả về số M tìm được.
  return M;
}

void main() {
  // Hàm chính để thực thi chương trình.

  String N = '21322113'; // Số N được cung cấp.
  String M = findOriginalNumber(N); // Tìm số M từ số N.
  if (M.isNotEmpty) {
    // Nếu tìm thấy số M, in ra kết quả.
    print('Số M tìm được là: $M');
  }
}

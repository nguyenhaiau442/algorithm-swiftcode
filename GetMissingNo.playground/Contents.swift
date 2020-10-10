/*
 Tìm phần tử thiếu trong mảng
 */

func getMissingNo(array: [Int]) -> Int {
    var total: Int = 0
    total = (array.count + 1) * (array.count + 2) / 2
    for i in 0..<array.count {
        total -= array[i]
    }
    return total
}

var array: [Int] = [1, 2, 3, 5, 6, 7, 8]
print("missing number is \(getMissingNo(array: array))")

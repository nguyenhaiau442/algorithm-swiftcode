/*
tính tổng các phần tử trong mảng
*/

func sumArray(array: [Int]) -> Int {
    var sum = 0
    for i in array {
        sum += i
    }
    return sum
}

var array: [Int] = [1, 2, 3, 4, 10, 11, 99]
print("sum array: \(sumArray(array: array))")

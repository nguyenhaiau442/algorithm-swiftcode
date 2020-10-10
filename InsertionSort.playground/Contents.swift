/*
 Thuật toán sắp xếp chèn thực hiện sắp xếp dãy số theo cách duyệt từng phần tử và chèn từng phần tử đó vào đúng vị trí trong mảng con(dãy số từ đầu đến phần tử phía trước nó) đã sắp xếp sao cho dãy số trong mảng sắp đã xếp đó vẫn đảm bảo tính chất của một dãy số tăng dần
 */

func insertionSort(array: inout [Int]) -> [Int] {
    for i in 1..<array.count {
        let value = array[i]
        var position = i
        while position > 0 && array[position - 1] > value {
            array[position] = array[position - 1]
            position -= 1
        }
        array[position] = value
    }
    return array
}

var array: [Int] = [12, 7, 3, 56, 89, 65, 32, 11]
insertionSort(array: &array)
print("array sorted: \(array)")

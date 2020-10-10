/*
Thuật toán selection sort sắp xếp một mảng bằng cách đi tìm phần tử có giá trị nhỏ nhất (giả sử với sắp xếp mảng tăng dần) trong đoạn đoạn chưa được sắp xếp và đổi chỗ phần tử nhỏ nhất đó với phần tử ở đầu đoạn chưa được sắp xếp (không phải đầu mảng). Thuật toán sẽ chia mảng làm 2 mảng con
*/

func selectionSort(array: inout [Int]) -> [Int] {
    for i in 0..<array.count - 1 {
        var min = i
        for j in i + 1..<array.count {
            if array[j] < array[min] {
                min = j
            }
        }
        let tmp = array[min]
        array[min] = array[i]
        array[i] = tmp
    }
    return array
}

var array: [Int] = [12, 7, 3, 56, 89, 65, 32, 11]
selectionSort(array: &array)
print("array sorted: \(array)")

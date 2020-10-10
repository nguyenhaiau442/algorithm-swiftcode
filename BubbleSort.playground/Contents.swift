/*
 thuật toán bubble sort thực hiện sắp xếp dãy số bằng cách lặp lại công việc đổi chỗ 2 số liên tiếp nhau nếu chúng đứng sai thứ tự (số sau bé hơn số trước với trường hợp sắp xếp tăng dần) cho đến khi dãy số được sắp xếp
 */

func bubbleSort(array: inout [Int]) -> [Int] {
    for _ in 0..<array.count {
        for j in 1..<array.count {
            if array[j] < array[j-1] {
                let tmp = array[j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
    }
    return array
}

var array: [Int] = [12, 7, 3, 56, 89, 65, 32, 11]
bubbleSort(array: &array)
print("array sorted: \(array)")

/*
 so sánh các phần tử trong mảng
 */

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var point: [Int] = [0, 0]
    for i in 0...a.count - 1 {
        if a[i] > b[i] {
            point[0] += 1
        } else if a[i] < b[i] {
            point[1] += 1
        }
    }
    return point
}

compareTriplets(a: [17, 28, 30], b: [99, 16, 8])

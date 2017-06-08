package main

import (
  "fmt"
  "sort"
)

func mean(elements []int) float64 {
  sum := 0.0
  for _, n := range elements {
    sum += float64(n)
  }
  return sum / float64(len(elements))
}

func median(elements []int) float64 {
  size := len(elements)
  sort.Ints(elements)
  if size % 2 == 0 {
    return float64(elements[size / 2] + elements[(size / 2) - 1]) / 2.0
  }
  return float64(elements[size / 2])
}

func mode(elements []int) int {
  frequencies := make(map[int]int, len(elements))
  max := 0
  for _, n := range elements {
    frequencies[n]++
    if frequencies[n] > max {
      max = frequencies[n]
    }
  }

  smallest := 100000
  for n, freq := range frequencies {
    if freq == max && n < smallest {
      smallest = n
    }
  }

  return smallest
}

func main() {
  var size int
  _, err := fmt.Scanf("%d", &size)
  if err != nil {
    panic(err)
  }
  elements := make([]int, 0)
  for i := 0; i < size; i++ {
    var element int
    fmt.Scanf("%d", &element)
    elements = append(elements, element)
  }
  fmt.Printf("%.1f\n", mean(elements))
  fmt.Printf("%.1f\n", median(elements))
  fmt.Println(mode(elements))
}
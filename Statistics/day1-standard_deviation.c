#include <stdio.h>
#include <math.h>

float mean(int* elements, int size) {
  int sum = 0;
  for (int i = 0; i < size; i++) {
    sum += elements[i];
  }
  return (float) sum / size;
}

float std_deviation(int* elements, int size, float mean) {
  float total_sum = 0;
  for (int i = 0; i < size; i++) {
    total_sum += pow((float) mean - elements[i], 2);
  }
  return pow(total_sum / size, 0.5);
}

int main() {
  int size;
  scanf("%d", &size);
  int elements[size];
  for (int i = 0; i < size; i++) {
    scanf("%d", &elements[i]);
  }
  float m = mean(elements, size);
  printf("%.1f\n", std_deviation(elements, size, m));
  return 0;
}
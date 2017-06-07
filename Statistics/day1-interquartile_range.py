def build(elements, frequencies):
  S = []
  for i, element in enumerate(elements):
    for times in range(frequencies[i]):
      S.append(element)
  return sorted(S)

def median(elements):
  size = len(elements)
  if size % 2 == 0:
    return float(elements[size / 2] + elements[size / 2 - 1]) / 2.0
  return elements[size / 2]

size = int(raw_input())
elements = [int(i) for i in raw_input().split(' ')]
frequencies = [int(i) for i in raw_input().split(' ')]
S = build(elements, frequencies)

total_size = len(S)
q1 = median(S[0:total_size/2 - (total_size % 2)])
q3 = median(S[total_size/2 + (total_size % 2):])
print float(q3 - q1)

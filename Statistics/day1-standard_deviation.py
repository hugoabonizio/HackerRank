class Statistics(object):
  def __init__(self, elements):
    self.elements = elements
    self.mean = sum(self.elements) / len(self.elements)

  def std_deviation(self):
    total_sum = 0
    for i in self.elements:
      total_sum += (self.mean - i) ** 2
    return (total_sum / len(self.elements)) ** 0.5

n = input()
statistics = Statistics([int(i) for i in input().split(' ')])
print(round(statistics.std_deviation(), 1))

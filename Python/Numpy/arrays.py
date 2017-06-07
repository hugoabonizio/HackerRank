import numpy

elements = [float(i) for i in input().split(' ')]
array = numpy.array(elements)
print(array[::-1])

def is_prime(number):
  if number == 1:
    return False
  for n in range(2, int(number ** 0.5) + 1):
    if number % n == 0:
      return False
  return True

times = int(input())
for _ in range(times):
  i = int(input())
  if is_prime(i):
    print('Prime')
  else:
    print('Not prime')

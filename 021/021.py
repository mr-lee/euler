def factorSum(x):
  z=0
  for y in range(1,x/2+1):
    if x % y == 0:
      z+=y
  return z

nums={}
for x in range(1,10001):
  nums[x] = factorSum(x)

amicable=0
for x in range(1,10001):
  try:
    if x == nums[nums[x]] and x!=nums[x]:
      amicable += x
  except KeyError:
    pass
print amicable

nums={}
for i in range(1,1000001):
  n=1
  init=i
  done=0
  while (i!=1):
    try:
      k = nums[i]
      nums[init]=n+k
      done=1
      break
    except KeyError:
      n+=1
      if(i%2):
        i=3*i+1
      else:
        i=i/2
  if done:
    continue
  nums[init]=n

print max(nums,key=nums.get)

#This solution is really just a brute force approach.  I'll rewrite this in haskell when I get the chance.

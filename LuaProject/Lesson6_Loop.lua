print("******************循环语句***************************")


print("******************while语句***************************")
num = 0
while num <5 do
	print(num)
	num=num+1
end
print("******************do while语句***************************")
num = 0
repeat
	print(num)
	num = num+1
until num>5
print("******************for语句***************************")
for i =1,5 do --默认递增 i会默认+1
	print(i)
end
print("**************")
for i =1,5,2 do --自定义增量为2  i->1->3->5
	print(i)
end
print("**************")
for i =5,1,-2 do --
	print(i)
end
print("******************函数***************************")
-- function 函数名()
-- end

-- a = function()
--end

print("******************无参无返回值***************************")
function F1()
	print("F1函数")
	-- body
end
F1()

F2 = function()
	print("F2函数")
end
F2()
print("*****************有参数***************************")
function F3(a)
	print("参数："..a)
end
F3("iiicsj")
-- 如果传入的参数和函数个数不匹配
-- 不会报错 只会补空nil 或者丢弃
F3("iiicsj","ww")
print("******************有返回值***************************")
function F4()
	return 12,"234",true
end
-- 变量不够 不影响 值接取对应位置的返回值
-- 如果变量多了 不应 直接赋值nil
temp0,temp1,temp2 =F4()
print(temp0)
print(temp1)
print(temp2)



print("******************函数的类型***************************")
-- 函数类型就是function


print("******************函数的重载***************************")
-- lua 中 函数不支持重载 默认调用最后一个声明的函数
function F6()
	-- body
	print("你真帅")
end
function F6(str)
	-- body
	print(str)
end
F6()
print("******************变长参数***************************")

function F7( ... )
-- 变长参数使用 用一个表存起来 再用
	-- body
	arg = {...}
	for i=1,#arg  do
		print(arg[i])
	end
end
	F7("11",true)

print("******************函数的嵌套***************************")
function F8()
	-- body
	return function()
		print("666")

	end
end
f9 = F8()
f9()

-- 闭包
function F9(x)
	-- 改变传入参数的生命周期
	return function(y)
		return x+y
	end
end


f10 = F9(10)
print(f10(5))
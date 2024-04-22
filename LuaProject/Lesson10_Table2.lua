print("******************复杂数据类型-表2***************************")

print("******************字典***************************")

print("******************字典的申明***************************")
-- 字典是由键值对构成
a= {["name"] = "Iiicsj",["age"] = 14,["1"]=5}
-- 访问单个变量,用中括号填键 来访问
print(a["age"])
-- 还可以类似成员变量来访问 但不能是数字 
print(a.age)

-- 修改
a["age"] =18
print(a.age)
-- 新增
a["sex"] = false
print (a["sex"])
-- 删除  
a["sex"] = nil
print (a["sex"])

print("******************字典的遍历***************************")
-- 如果模拟字典 遍历一定要用Pairs
for k,v in pairs(a) do
	print(k,v)
end
print("******************类和结构体***************************")
-- lua 中默认没有面向对象的 需要自己实现
-- 成员变量，成员函数
Student ={
	age =1,
	sex= true,
	Up = function()
		-- 想要在表函数内部调用表本身的属性
		print(Student.age)
		print("我成长了")
	end,
	Learn = function(t)

		print(t.sex)
		print ("好好学习，天天向上")
	end
}
-- lua 中.（点）和:（冒号）的区别
Student.Learn(Student)
-- 冒号调用方法，会默认把调用者 作为第一个参数传入方法中
Student:Learn()



	-- 申明表过后，在表外去申明表有的变量和方法
	Student.name = "Iiicsj"
	Student.Speak = function()
		print("说话")
	end

	--c#要是使用类 实例化对象new 静态直接点
	--lua中类的表现，更像是一个类中有很多 静态变量和函数
	print(Student.age)
	Student.Up()
	print(Student.name)
	Student.Speak()

-- 冒号调用方法，会默认把调用者 作为第一个参数传入方法中
function Student:Speak2()

-- lua中有一个 关键字self表示传入的第一个参数
	print(self.name)
	print("说话2")
end
Student:Speak2()

print("******************表的公共操作***************************")

-- 表中table提供的一些公共方法的讲解
t1 = {{age = 1,name = "123"},{age = 2,name = "345"}}
t2 = {name = "Iiicsj",sex = true}
--插入
print(#t1)
table.insert(t1,t2)
print(#t1)

-- 删除指定元素
--remove方法 传表进去 会移除最后一个索引的内容
table.remove(t1)
print(#t1)

--remove方法 传两个参数 第一个是要移除内容的表，第二个是要移除内容的索引
table.remove(t1,1)
print(t1[1].name)
print(#t1)
print("******************排序***************************")
t2 = {5,2,7,9,5}
-- 传入要排序的表 默认升序
table.sort(t2)
for _,v in pairs(t2) do
	print(v)
end
print("******************降序排序***************************")
table.sort(t2,function(a,b)
	if a>b then
		return true
	end
end
	)
for _,v in pairs(t2) do
	print(v)
end
print("******************拼接***************************")
tb= {"123","456","789","126"}
-- 连接函数，用于拼接表中元素 返回值 是一个字符串(仅适用于数字和字符串)
str = table.concat( tb, "-")
print(str)
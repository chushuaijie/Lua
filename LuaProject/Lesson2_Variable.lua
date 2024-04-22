print("******************变量***************************")
--lua当中的简单变量类型
--nil number string boolean
--lua中所有的变量申明 都不需要申明变量类型 他会自动的判断类型
--类似c#中的var
--lua中的一个变量 可以随便赋值 自动识别类型
--通过type函数，我们可以得到变量的类型，返回值是string                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
--lua中没有声明过的变量 不会报错 默认值是nil

--nil有点类似c#中的null
print("********nil********")
a=nil
print(a)

--number 所有的数值都是number
print("********number********")
a=1
print(a)
a=1.2
print(a)
print("********string********")

--字符串的声明用单引号或双引号，lua中没有char
a="123123"
print(a)
print("********bool********")

--字符串的声明用单引号或双引号，lua中没有char
a=true
print(a)
a=false
print(a)
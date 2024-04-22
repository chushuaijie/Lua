print("******************字符串***************************")
str = "双引号字符串"
str = '单引号字符串'

print("******************字符串长度***************************")
s = "abcdefg字符串"
--英文占一个长度 汉字三个长度 
print(#s)
print("******************字符串多行打印***************************")
--lua中也是支持转义字符的
print("123\n1234")

s = [[俺叫
Iiicsj
你好
]]

print(s)

print("******************字符串拼接***************************")
--字符串拼接 通过..
print("123".."456")
s1 = 111
s2 = 222
print(s1..s2)
print(string.format("我今年%d岁了",18) )
--%d 数字 %a 与任何字符 %s与字符

print("******************别的类型转字符串***************************")
a = true
print(tostring(a))

print("******************字符串提供的公共方法***************************")
str = "abCDEfg"
-- 大小写转换
print(string.upper(str))
print(string.lower(str))
-- 翻转
print(string.reverse(str))
-- 索引查找
print(string.find(str,"bCD"))
-- 截取字符串
print(string.sub(str,2,4))
-- 字符串重复
print(string.rep(str,2))
--字符串修改
print(string.gsub(str,"CD","***"))

--字符转ASCII码
a= string.byte("Lua",2)
print(a)
--ASCII码转字符
print(string.char(a))


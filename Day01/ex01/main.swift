

var obj = Card(Color.Club.rawValue, Value.King.rawValue)
obj.HelloWorld()
print(obj.color)
print(obj.value)
print(obj.description)

print("--------------------------------")

var obj2 = Card(Color.Club.rawValue, Value.King.rawValue)

obj2.HelloWorld()
print(obj2.color)
print(obj2.value)
print(obj2.description)

if (obj.isEqual(obj2)){
    print ("----------------------------------------")
    print ("                are equal               ")
    print ("                 🃏 🎴 🀄️                ")
    print ("----------------------------------------")
} else {
    print("Cards are not equal")
}
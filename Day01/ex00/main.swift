
print ("----------------------------------------")
print ("                allColors               ")
print ("                 ♥ ♦ ♣ ♠                ")
print ("----------------------------------------")

for color in Color.allColors {
    print(color.rawValue)
}

print ("\n")

print ("----------------------------------------")
print ("                allValues               ")
print ("                 🃏 🎴 🀄️                ")
print ("----------------------------------------")

for value in Value.allValues {
    print("\(value)\t=  \(value.rawValue)")
}

print ("\n")
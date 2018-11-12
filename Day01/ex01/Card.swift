import Foundation

class Card: NSObject {
    var color:String;
    var value:Int;

    init(_ color:String, _ value:Int)
    {
        self.color = color
        self.value = value
    }

    override var description:String {
        var ret:String = "you now possess a "
        ret += color
        ret += " of " + String(value)
        return (ret)
    }

    override func isEqual(_ object: Any?) -> Bool
    {
        if let obj = object as? Card
        {
            return self.value == obj.value && self.color == obj.color
        }
        else {
            return false
        }
    }

    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.isEqual(rhs)
    }
    
    func HelloWorld(){
        print("Hello World")
    }
}
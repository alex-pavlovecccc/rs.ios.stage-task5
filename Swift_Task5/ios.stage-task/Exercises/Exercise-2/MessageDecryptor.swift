import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
        var strArray: [String] = []
                //let char = "["
                for i in message {
                    strArray.append(String(i))
                }
                
                var value: String = ""
                
                for (i,j) in message.enumerated() {
                    
                    if j.isNumber {
                        let ind = String(j)
                        var valueIndex = Int(ind) ?? 0
                    
                        while valueIndex > 0 {
                            value += String(strArray[i + 1])
                            valueIndex -= 1
                        }
                    }
                }
                return value
    }
}

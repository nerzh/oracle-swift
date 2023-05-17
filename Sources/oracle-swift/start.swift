// The Swift Programming Language
import Foundation
import adnl_swift
//import Crypto
//import CryptoKit
//import CNIOBoringSSL
import CryptoSwift


@main
enum Main {
    static func main() async throws {
//        let k = "a504806777db569e9bfe1f7e1341e4cf5e7fc40682197318aac0aca578f74312"
//        let k = "pQSAZ3fbVp6b/h9+E0Hkz15/xAaCGXMYqsCspXj3QxI="
//        let a = try ADNLAddress(publicKey: k)
//        let n = ADNLAESParams()
        
        let privateKey =  "6c6f66b337fad5d0905d082ab033841c0efab344d975b8150e0dedea7623f541"
//        let privateKey =  "a86ba629e6e579ccc6ff29e5e3e54325758987f065337bce24786cb70bcffa5e" /// X25519
        let peer_pubk =  "a504806777db569e9bfe1f7e1341e4cf5e7fc40682197318aac0aca578f74312"
        
//        let publicKey =   "320419ac51441161d65eee99bbfa27193f4f25122b95f09cbee3188281ff2cc6"
        let sharedKey =   "67b945bf1b939d6362621cf3d02e2257687a7c89be5647c21f67e5f624feda45"
        
        
//        let privateKey =  "326befdf19612eb334565c403f43809cc16e42a9badf42114bbfd83491faaed7"
//        let peer_pubk =  "5f276b971ac5d7591590c5dc9f209a1170b59f6946c90513152a779ec065fd18"
        
//        let a = try ADNLKeys(privateKey: privateKey.hexadecimalToData!, peerPublicKey: peer_pubk.hexadecimalToData!)
        let a = ADNLPacket.init(payload: Data([1,2,3,4,5,6,7,8,9,0]))
        
        
//        print(n.bytes)
//        print("REAL", a.public.toHexadecimal)
//        print("REAL", a.shared.toHexadecimal)
        print("REAL", a.data.bytes)
        print("REAL", a.data.toHexadecimal)
        print("REAL", a.size)
        print("REAL", sharedKey)
    }
    
//    func aesEncrypt(key: String, iv: String) throws -> String{
//        let data = self.dataUsingEncoding(NSUTF8StringEncoding)
//        AES(key: <#T##Array<UInt8>#>, blockMode: )
//        let enc = try AES(key: key, iv: iv, blockMode: .CBC).encrypt(data!.arrayOfBytes(), padding: PKCS7())
//        let encData = NSData(bytes: enc, length: Int(enc.count))
//        let base64String: String = encData.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0));
//        let result = String(base64String)
//        return result
//    }
//    
//    func aesDecrypt(key: String, iv: String) throws -> String {
//        let data = NSData(base64EncodedString: self, options: NSDataBase64DecodingOptions(rawValue: 0))
//        let dec = try AES(key: key, iv: iv, blockMode:.CBC).decrypt(data!.arrayOfBytes(), padding: PKCS7())
//        let decData = NSData(bytes: dec, length: Int(dec.count))
//        let result = NSString(data: decData, encoding: NSUTF8StringEncoding)
//        return String(result!)
//    }
}



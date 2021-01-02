import Foundation

extension Data.Iterator {
    public mutating func next(count: Int) -> Data? {
        var byteArray = [UInt8]()
        for _ in 1...count {
            guard let byte = next() else {
                return nil
            }
            byteArray.append(byte)
        }
        return Data(byteArray)
    }
}

//
//  ByteDecodable.swift
//  AnyByte
//
//  Created by 刘栋 on 2019/5/6.
//  Copyright © 2019 anotheren.com. All rights reserved.
//

import Foundation

public protocol ByteDecodable {
    
    init(from decoder: ByteDecoder) throws
}

public protocol ByteDecoder {
    
    var userInfo: [BinaryCodingUserInfoKey: Any] { get }
    
    func container() -> ByteDecodingContainer
}

public protocol ByteDecodingContainer: BaseByteDecodingContainer {
    
    var userInfo: [BinaryCodingUserInfoKey: Any] { get }
    
    var isAtEnd: Bool { get }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T: ByteDecodable
}

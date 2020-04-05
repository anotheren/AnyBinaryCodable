//
//  ByteEncodable.swift
//  AnyBinaryCodable
//
//  Created by 刘栋 on 2019/5/6.
//  Copyright © 2019-2020 anotheren.com. All rights reserved.
//

import Foundation

public protocol ByteEncodable {
    
    func encode(to encoder: ByteEncoder)
}

public protocol ByteEncoder {
    
    var userInfo: [BinaryCodingUserInfoKey: Any] { get }
    
    func container() -> ByteEncodingContainer
}

public protocol ByteEncodingContainer: BaseBinaryEncodingContainer {
    
    mutating func encode<T>(_ value: T) where T: ByteEncodable
}

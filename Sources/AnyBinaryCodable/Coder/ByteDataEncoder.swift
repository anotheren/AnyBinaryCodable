//
//  ByteDataEncoder.swift
//  AnyBinaryCodable
//
//  Created by 刘栋 on 2019/5/6.
//  Copyright © 2019-2020 anotheren.com. All rights reserved.
//

import Foundation

public struct ByteDataEncoder {
    
    public init() { }
    
    public var userInfo: [BinaryCodingUserInfoKey: Any] = [:]
    
    public func encode<T>(_ value: T) -> Data where T: ByteEncodable {
        let encoder = _ByteDataEncoder(bufferedData: BufferedData(), userInfo: userInfo)
        value.encode(to: encoder)
        return encoder.bufferedData.storage
    }
    
    public func encode<T>(_ value: T, to bufferedData: BufferedData) where T: ByteEncodable {
        let encoder = _ByteDataEncoder(bufferedData: bufferedData, userInfo: userInfo)
        value.encode(to: encoder)
    }
}

struct _ByteDataEncoder: ByteEncoder {
    
    let bufferedData: BufferedData
    let userInfo: [BinaryCodingUserInfoKey: Any]
    
    init(bufferedData: BufferedData, userInfo: [BinaryCodingUserInfoKey: Any]) {
        self.bufferedData = bufferedData
        self.userInfo = userInfo
    }
    
    func container() -> ByteEncodingContainer {
        return _ByteDataEncodingContainer(bufferedData: bufferedData, userInfo: userInfo)
    }
}

struct _ByteDataEncodingContainer: ByteEncodingContainer {
    
    let bufferedData: BufferedData
    let userInfo: [BinaryCodingUserInfoKey: Any]
    
    init(bufferedData: BufferedData, userInfo: [BinaryCodingUserInfoKey: Any]) {
        self.bufferedData = bufferedData
        self.userInfo = userInfo
    }
    
    @inlinable
    func write(data: Data) {
        bufferedData.write(data: data)
    }
    
    @inlinable
    func encode<T>(_ value: T) where T: ByteEncodable {
        let encoder = _ByteDataEncoder(bufferedData: bufferedData, userInfo: userInfo)
        value.encode(to: encoder)
    }
}

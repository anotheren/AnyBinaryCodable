//
//  Ex+FixedWidthInteger.swift
//  AnyBinaryCodable
//
//  Created by 刘栋 on 2019/5/7.
//  Copyright © 2019-2020 anotheren.com. All rights reserved.
//

import Foundation

extension FixedWidthInteger {
    
    @inlinable
    func update(endian: Endian) -> Self {
        switch endian {
        case .big:
            return bigEndian
        case .little:
            return littleEndian
        }
    }
}

//
//  BinaryCodingError.swift
//  AnyBinaryCodable
//
//  Created by 刘栋 on 2019/5/8.
//  Copyright © 2019-2020 anotheren.com. All rights reserved.
//

import Foundation

public enum BinaryCodingError: Error {
    
    case eof
}

extension BinaryCodingError: CustomStringConvertible {
    
    public var description: String {
        switch self {
        case .eof:
            return "EOF"
        }
    }
}

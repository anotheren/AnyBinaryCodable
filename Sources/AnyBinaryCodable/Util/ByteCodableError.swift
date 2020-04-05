//
//  ByteCodingError.swift
//  AnyBinaryCodable
//
//  Created by 刘栋 on 2019/5/8.
//  Copyright © 2019-2020 anotheren.com. All rights reserved.
//

import Foundation

public enum ByteCodingError: Error {
    
    case eof
}

extension ByteCodingError: CustomStringConvertible {
    
    public var description: String {
        switch self {
        case .eof:
            return "EOF"
        }
    }
}

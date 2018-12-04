//
//  LeonNameSpace.swift
//  LeonExtensions
//
//  Created by Leon Tse on 2018/12/4.
//

import UIKit

public final class LeonNameSpace<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/**
 A type that has LeonNameSpace extensions.
 */
public protocol LeonNameSpaceCompatible {
    associatedtype CompatibleType
    var leon: CompatibleType { get }
}

public extension LeonNameSpaceCompatible {
    public var leon: LeonNameSpace<Self> {
        return LeonNameSpace(self)
    }
}

/// Extend NSObject with `leon` proxy.
extension NSObject: LeonNameSpaceCompatible { }

/// 为 UIViewController 类添加扩展方法
extension LeonNameSpace where Base: UIViewController {
    public func prints() {
        print("aaa")
    }
}


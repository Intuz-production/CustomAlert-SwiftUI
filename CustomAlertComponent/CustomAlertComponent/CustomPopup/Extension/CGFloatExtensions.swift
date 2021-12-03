//The MIT License (MIT)
//
//Copyright (c) 2020 INTUZ
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

extension CGFloat {

    /// EZSE: Return the central value of CGFloat.
    public var center: CGFloat { return (self / 2) }

    public func toRadians() -> CGFloat {
        return (CGFloat.pi * self) / 180.0
    }

    /// EZSwiftExtensions
    public func degreesToRadians() -> CGFloat {
        return (CGFloat.pi * self) / 180.0
    }

    /// EZSwiftExtensions
    public mutating func toRadiansInPlace() {
        self = (CGFloat.pi * self) / 180.0
    }

    /// EZSE: Converts angle degrees to radians.
    public static func degreesToRadians(_ angle: CGFloat) -> CGFloat {
        return (CGFloat.pi * angle) / 180.0
    }

    /// EZSE: Converts radians to degrees.
    public func radiansToDegrees() -> CGFloat {
        return (180.0 * self) / CGFloat.pi
    }

    /// EZSE: Converts angle radians to degrees mutable version.
    public mutating func toDegreesInPlace() {
        self = (180.0 * self) / CGFloat.pi
    }

    /// EZSE : Converts angle radians to degrees static version.
    public static func radiansToDegrees(_ angleInDegrees: CGFloat) -> CGFloat {
        return (180.0 * angleInDegrees) / CGFloat.pi
    }
    
    /// EZSE: Returns a random floating point number between 0.0 and 1.0, inclusive.
    public static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
        
    /// EZSE: Returns a random floating point number in the range min...max, inclusive.
    public static func random(within: Range<CGFloat>) -> CGFloat {
        return CGFloat.random() * (within.upperBound - within.lowerBound) + within.lowerBound
    }
    
    /// EZSE: Returns a random floating point number in the range min...max, inclusive.
    public static func random(within: ClosedRange<CGFloat>) -> CGFloat {
        return CGFloat.random() * (within.upperBound - within.lowerBound) + within.lowerBound
    }
    
    /**
      EZSE :Returns the shortest angle between two angles. The result is always between
      -π and π.
     
      Inspired from : https://github.com/raywenderlich/SKTUtils/blob/master/SKTUtils/CGFloat%2BExtensions.swift
     */
    public static func shortestAngleInRadians(from first: CGFloat, to second: CGFloat) -> CGFloat {
        let twoPi = CGFloat(.pi * 2.0)
        var angle = (second - first).truncatingRemainder(dividingBy: twoPi)
        if (angle >= .pi) {
            angle = angle - twoPi
        }
        if (angle <= -.pi) {
            angle = angle + twoPi
        }
        return angle
    }
}

// MARK: - Properties
extension CGFloat {
    
    /// SwifterSwift: Absolute of CGFloat value.
    public var abs: CGFloat {
        return Swift.abs(self)
    }
    
    /// SwifterSwift: Ceil of CGFloat value.
    public var ceil: CGFloat {
        return Foundation.ceil(self)
    }
    
    /// SwifterSwift: Floor of CGFloat value.
    public var floor: CGFloat {
        return Foundation.floor(self)
    }
    
    /// SwifterSwift: Check if CGFloat is positive.
    public var isPositive: Bool {
        return self > 0
    }
    
    /// SwifterSwift: Check if CGFloat is negative.
    public var isNegative: Bool {
        return self < 0
    }
    
    /// SwifterSwift: Int.
    public var int: Int {
        return Int(self)
    }
    
    /// SwifterSwift: Float.
    public var float: Float {
        return Float(self)
    }
    
    /// SwifterSwift: Double.
    public var double: Double {
        return Double(self)
    }
    
}


// MARK: - Methods
extension CGFloat {
    
    /// SwifterSwift: Random CGFloat between two CGFloat values.
    ///
    /// - Parameters:
    ///   - min: minimum number to start random from.
    ///   - max: maximum number random number end before.
    /// - Returns: random CGFloat between two CGFloat values.
    public static func randomBetween(min: CGFloat, max: CGFloat) -> CGFloat {
        let delta = max - min
        return min + CGFloat(arc4random_uniform(UInt32(delta)))
    }
    
}


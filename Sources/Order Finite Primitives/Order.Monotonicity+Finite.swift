// Order.Monotonicity+Finite.swift
// Conforms Order.Monotonicity (swift-order-primitives) to Finite.Enumerable
// (this package). finite → order is a downward dependency.

import Cardinal_Primitives
public import Finite_Enumerable_Primitives
public import Order_Monotonicity_Primitives
import Ordinal_Primitives

extension Order.Monotonicity: @retroactive Finite.Enumerable {
    /// Number of monotonicity values.
    @inlinable
    public static var count: Cardinal { 3 }

    /// Ordinal of this value (0: increasing, 1: decreasing, 2: constant).
    @inlinable
    public var ordinal: Ordinal {
        switch self {
        case .increasing: 0
        case .decreasing: 1
        case .constant: 2
        }
    }

    /// Creates a value from its ordinal.
    @inlinable
    public init(_unchecked: Void, ordinal: Ordinal) {
        self = [.increasing, .decreasing, .constant][ordinal]
    }
}

//
//  UsesAutoLayout.swift
//  CatBreeds
//
//  Created by Antoine van der Lee on October 21, 2019.
//

import UIKit

@propertyWrapper
public struct UsesAutoLayout<T: UIView> {
  public var wrappedValue: T {
    didSet {
      wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
  }

  public init(wrappedValue: T) {
    self.wrappedValue = wrappedValue
    wrappedValue.translatesAutoresizingMaskIntoConstraints = false
  }
}

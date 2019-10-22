//
//  CreditsView.swift
//  CatBreeds
//
//  Created by Joshua Adams on 3/30/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class CreditsView: UIView {
  @UsesAutoLayout
  internal var credits: UITextView = {
    let credits = UITextView()
    credits.textColor = Colors.white
    credits.backgroundColor = Colors.blackish
    credits.font = Fonts.body
    credits.isEditable = false
    return credits
  } ()

  @UsesAutoLayout
  internal var meow1: UIButton = {
    let meow1 = UIButton()
    meow1.setTitle("Meow 1", for: .normal)
    meow1.titleLabel?.font = Fonts.button
    meow1.setTitleColor(Colors.greenish, for: .normal)
    return meow1
  } ()

  @UsesAutoLayout
  internal var meow2: UIButton = {
    let meow2 = UIButton()
    meow2.setTitle("Meow 2", for: .normal)
    meow2.titleLabel?.font = Fonts.button
    meow2.setTitleColor(Colors.greenish, for: .normal)
    return meow2
  } ()

  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented.")
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = Colors.blackish
    [credits, meow1, meow2].forEach {
      addSubview($0)
    }
    credits.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Padding.standard).activate()
    credits.bottomAnchor.constraint(equalTo: meow1.topAnchor, constant: Padding.standard * -1.0).activate()
    credits.bottomAnchor.constraint(equalTo: meow2.topAnchor, constant: Padding.standard * -1.0).activate()
    credits.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
    credits.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()

    meow1.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: Padding.standard * -1.0).activate()
    meow1.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()

    meow2.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: Padding.standard * -1.0).activate()
    meow2.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
  }
}

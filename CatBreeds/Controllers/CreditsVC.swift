//
//  CreditsVC.swift
//  CatBreeds
//
//  Created by Joshua Adams on 2/18/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class CreditsVC: UIViewController, UITextViewDelegate {
  var creditsView: CreditsView {
    return view as! CreditsView
  }

  override func loadView() {
    let creditsView = CreditsView(frame: UIScreen.main.bounds)
    creditsView.credits.attributedText = Credits.credits.infoString
    creditsView.credits.delegate = self
    creditsView.meow1.addTarget(self, action: #selector(meow1), for: .touchUpInside)
    creditsView.meow2.addTarget(self, action: #selector(meow2), for: .touchUpInside)
    view = creditsView
  }

  @objc func meow1(sender: UIButton!) {
    SoundManager.play(.meow1)
  }

  @objc func meow2(sender: UIButton!) {
    SoundManager.play(.meow2)
  }

  func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
    let http = "http"
    if URL.absoluteString.prefix(http.count) == http {
      return true
    }
    else {
      return false
    }
  }
}

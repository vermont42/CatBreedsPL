//
//  BreedDetailVC.swift
//  CatBreedsIB
//
//  Created by Joshua Adams on 2/17/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class BreedDetailVC: UIViewController, UITextViewDelegate {
  private var breed: Breed!

  var breedDetailView: BreedDetailView {
    return view as! BreedDetailView
  }

  override func loadView() {
    title = breed.name
    let breedDetailView = BreedDetailView(frame: UIScreen.main.bounds)
    breedDetailView.fullDescription.text = breed.fullDescription
    breedDetailView.fullDescription.delegate = self
    breedDetailView.photo.image = breed.photo
    view = breedDetailView
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    breedDetailView.hide()
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    breedDetailView.fullDescription.setContentOffset(.zero, animated: false)
    breedDetailView.unhide()
  }

  class func getViewController(breed: Breed) -> BreedDetailVC {
    let breedDetailVC = BreedDetailVC()
    breedDetailVC.breed = breed
    return breedDetailVC
  }

  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    let y = breedDetailView.fullDescription.contentOffset.y
    if y < BreedDetailView.initialPhotoHeightWidth {
      breedDetailView.updatePhotoSize(heightWidth: BreedDetailView.initialPhotoHeightWidth - y)
    } else {
      breedDetailView.updatePhotoSize(heightWidth: 0.0)
    }
  }
}

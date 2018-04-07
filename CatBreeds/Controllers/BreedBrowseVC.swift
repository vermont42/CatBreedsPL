//
//  BreedBrowseVC.swift
//  CatBreeds
//
//  Created by Joshua Adams on 2/12/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class BreedBrowseVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  private let breeds = Breeds()

  var breedBrowseView: BreedBrowseView {
    return view as! BreedBrowseView
  }

  override func loadView() {
    view = BreedBrowseView(frame: UIScreen.main.bounds)
    title = "Browse"
    breedBrowseView.setupTable(dataSource: self, delegate: self)
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    breedBrowseView.isHidden = false
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return breeds.breedCount
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = breedBrowseView.table.dequeueReusableCell(withIdentifier: "\(BreedCell.self)") as! BreedCell
    let breed = breeds.breedAtIndex(indexPath.row)
    cell.configure(name: breed.name, photo: breed.photo)
    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return BreedCell.thumbnailHeightWidth
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: false)
    let breedDetailVC = BreedDetailVC.getViewController(breed: breeds.breedAtIndex(indexPath.row))
    breedBrowseView.isHidden = true
    navigationController?.pushViewController(breedDetailVC, animated: true)
  }
}

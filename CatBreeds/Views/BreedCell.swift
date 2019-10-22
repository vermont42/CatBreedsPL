//
//  BreedCell.swift
//  CatBreeds
//
//  Created by Joshua Adams on 2/17/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class BreedCell: UITableViewCell {
  @UsesAutoLayout
  private var photo: UIImageView = {
    let photo = UIImageView()
    photo.contentMode = .scaleAspectFit
    return photo
  } ()

  @UsesAutoLayout
  private var name: UILabel = {
    let name = UILabel()
    name.textColor = Colors.white
    name.font = Fonts.body
    return name
  } ()

  internal static let thumbnailHeightWidth: CGFloat = 58.0

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented.")
  }

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    backgroundColor = Colors.blackish
    addSubview(photo)
    addSubview(name)
    photo.centerYAnchor.constraint(equalTo: centerYAnchor).activate()
    photo.leadingAnchor.constraint(equalTo: leadingAnchor).activate()
    photo.heightAnchor.constraint(equalToConstant: BreedCell.thumbnailHeightWidth).activate()
    photo.widthAnchor.constraint(equalToConstant: BreedCell.thumbnailHeightWidth).activate()
    name.leadingAnchor.constraint(equalTo: photo.trailingAnchor, constant: Padding.standard).activate()
    name.centerYAnchor.constraint(equalTo: centerYAnchor).activate()
  }

  internal func configure(name: String, photo: UIImage) {
    self.name.text = name
    self.photo.image = photo
  }
}

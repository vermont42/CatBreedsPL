//
//  BreedBrowseView.swift
//  CatBreeds
//
//  Created by Joshua Adams on 3/29/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class BreedBrowseView: UIView {
  internal let table: UITableView = {
    let table = UITableView()
    table.backgroundColor = Colors.blackish
    table.enableAutoLayout()
    return table
  } ()

  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented.")
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = Colors.blackish
    addSubview(table)
    table.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).activate()
    table.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
    table.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
    table.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).activate()
  }

  func setupTable(dataSource: UITableViewDataSource, delegate: UITableViewDelegate) {
    table.dataSource = dataSource
    table.delegate = delegate
    table.register(BreedCell.self, forCellReuseIdentifier: "\(BreedCell.self)")
  }
}

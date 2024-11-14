//
//  TerceraPantalla.swift
//  JuegoFotos3
//
//  Created by Alumnos on 12/11/24.
//

import UIKit

class TerceraPantallaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    let images: [UIImage] = [
        UIImage(named: "AnimalCrossing")!,
        UIImage(named: "AnimalCrossing2")!,
        UIImage(named: "character-geeta")!,
        UIImage(named: "character-nemona")!,
        UIImage(named: "MarioHub_Luigi")!,
        UIImage(named: "MarioHub")!,
        UIImage(named: "MarioKart1")!,
        UIImage(named: "Mariokart2")!,
        UIImage(named: "nintendoSwichtSport")!,
        UIImage(named: "pokemon-iron_valiant")!,
        UIImage(named: "pokemon-walking_wake")!,
        UIImage(named: "swichSport")!,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self

        //collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCollectionViewCell
        cell.ButtonInCell.imageView?.image = images[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}
    


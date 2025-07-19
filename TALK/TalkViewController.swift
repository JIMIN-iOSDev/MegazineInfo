//
//  TalkViewController.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class TalkViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var talkCollectionView: UICollectionView!
    let list = ChatList.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }

    func configureCollectionView() {
        talkCollectionView.delegate = self
        talkCollectionView.dataSource = self
        
        let xib = UINib(nibName: "TalkCollectionViewCell", bundle: nil)
        talkCollectionView.register(xib, forCellWithReuseIdentifier: TalkCollectionViewCell.identifier)
        
        let layout = UICollectionViewFlowLayout()
        let deviceWidth = UIScreen.main.bounds.width
        let cellWidth = deviceWidth - (16 * 2)
        
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth/5)
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        layout.minimumLineSpacing = 4
        layout.scrollDirection = .vertical
        
        talkCollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkCollectionViewCell.identifier, for: indexPath) as! TalkCollectionViewCell
        cell.configure(row: list[indexPath.item])
        
        DispatchQueue.main.async {
            cell.profileImage.layer.cornerRadius = cell.profileImage.frame.width / 2
        }
        cell.profileImage.clipsToBounds = true
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}

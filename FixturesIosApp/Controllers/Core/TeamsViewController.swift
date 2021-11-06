//
//  TeamsViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import UIKit

class TeamsViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate  {
    
    struct BankListClass {
        var clubName : String
        let clubLogo : String
    }
    //Creating a Dummy Array
    let teams = [BankListClass(clubName: "Cambury FC", clubLogo: "club1"),
                 BankListClass(clubName: "Lions FC", clubLogo: "club2"),
                 BankListClass(clubName: "Manchecster United FC", clubLogo: "club3"),
                 BankListClass(clubName: "Chealse FC", clubLogo: "club4"),
                 BankListClass(clubName: "Liverpool FC", clubLogo: "club5"),
                 BankListClass(clubName: "Lions FC", clubLogo: "club2"),
                 BankListClass(clubName: "Cambury FC", clubLogo: "club1"),
                 BankListClass(clubName: "Chealse FC", clubLogo: "club4"),
                 BankListClass(clubName: "Manchecster United F", clubLogo: "club3"),
                 BankListClass(clubName: "Liverpool FC", clubLogo: "club5"),
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TeamsCollectionviewCell.identifier, for: indexPath) as! TeamsCollectionviewCell
        cell.configureLogo(uiImage: teams[indexPath.item].clubLogo,uiLabel: teams[indexPath.item].clubName)
        return cell
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      inializeView()
    }
    
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
    private var collectionView : UICollectionView?

    func inializeView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: (view.frame.width / 3 )-4  , height: (view.frame.width / 3 ) - 4)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else {
            return
        }
        collectionView.register(TeamsCollectionviewCell.self,forCellWithReuseIdentifier: TeamsCollectionviewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        self.view.addSubview(collectionView)
        collectionView.frame = self.view.bounds
    }
    
}

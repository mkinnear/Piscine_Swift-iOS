//
//  ViewController.swift
//  ex00
//
//  Created by Keegan KINNEAR on 2018/10/05.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (DataCentre.imageData.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ViewControllerCollectionViewCell
        
       let url = URL(string: DataCentre.imageData[indexPath.row])
        
//           print(DataCentre.imageData[indexPath.row])
        
        
            
            let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
            
            DispatchQueue.main.async {
                print("Done downloading")
                cell.MyImage.stopAnimating()
                cell.MyImage.isHidden = true
                cell.MyImage.isHidden = false
                if (data != nil) {
                    cell.MyImage.image = UIImage(data: data!)
                }
                else {
                    let alertController = UIAlertController(title: "Alert", message: "Image could not be downloaded", preferredStyle: .alert)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        
        
//        cell.MyImage.image = DataCentre.imageData[indexPath.row]
        
        return (cell)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  ResimAlma
//
//  Created by İlker Kaya on 5.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Tapped(_ sender: Any) {
        if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/thehatefuleight.png"){
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url)
                
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                }
            }
        }
    }
    
    @IBAction func button2Tapped(_ sender: Any) {
        if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/interstellar.png"){
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url)
                
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                }
            }
        }
    }
    
}


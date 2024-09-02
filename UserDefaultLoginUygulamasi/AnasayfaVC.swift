//
//  AnasayfaVC.swift
//  UserDefaultLoginUygulamasi
//
//  Created by Cihan AŞAN on 2.09.2024.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Geri tuşunu kaldırma
        navigationItem.hidesBackButton = true
        
        let kullaniciAdi = d.string(forKey: "kullaniciAdi") ?? ""
        
        labelSonuc.text = kullaniciAdi
    }
    

    @IBAction func cikisYap(_ sender: Any) {
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
    }

}

//
//  ViewController.swift
//  UserDefaultLoginUygulamasi
//
//  Created by Cihan AŞAN on 2.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    
    @IBOutlet weak var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kullaniciAdi = d.string(forKey: "kullaniciAdi") ?? ""
        let sifre = d.string(forKey: "sifre") ?? ""
        
        if kullaniciAdi != "" && sifre != "" {
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
        }
        
    }


    @IBAction func girisYap(_ sender: Any) {
        if let kullaniciAdi = textFieldKullaniciAdi.text, let sifre = textFieldSifre.text
        {
            if kullaniciAdi == "admin" && sifre == "123456" {
                
                d.set(kullaniciAdi, forKey: "kullaniciAdi")
                d.set(sifre, forKey: "sifre")
                performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
                
            } else {
                print("Hatalı Giriş")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //bu kodun etkisi tüm sayfalara yansır
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}


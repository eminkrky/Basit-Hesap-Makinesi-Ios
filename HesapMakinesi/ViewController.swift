//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Muhammet on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var sonuc: UILabel!
    @IBOutlet weak var ilkSayi: UITextField!
    @IBOutlet weak var ikinciSayi: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    func sayiAl(a:Int){
        if var ilk:Double=Double(ilkSayi.text!){
           //
            if var iki:Double=Double(ikinciSayi.text!){
                switch a{
                case 1:
                    sonuc.text=String(ilk+iki)
                case 2:
                    sonuc.text=String(ilk-iki)
                case 3:
                    sonuc.text=String(ilk*iki)
                case 4:
                    if iki == 0{
                        sonuc.text="Sıfıra Bölme Hatası"
                    }else{
                        sonuc.text=String(ilk/iki)
                    }
                default:
                    sonuc.text="Hata Oluştu"
                }
               
            }else{
                sonuc.text="İkinci giriş hatalı"
            }
        }else{
            sonuc.text="İlk giriş hatalı"
        }
    
    }
    @IBAction func toplama(_ sender: Any) {
        sayiAl(a: 1)
       
    }
    @IBAction func cikarma(_ sender: Any) {
        sayiAl(a: 2)

    }
    @IBAction func carpma(_ sender: Any) {
        sayiAl(a:3)

    }
    @IBAction func bölme(_ sender: Any) {
        sayiAl(a:4)

    }
}

//
//  ViewController.swift
//  InstagramApp
//
//  Created by Birdi on 13-09-21.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
       
    }
    
    private func handleNotAuthenticated(){
        //Vhrvk Suth status
        if Auth.auth().currentUser == nil {
            // Show log in
         let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
            
            }
        
        
    }
    
    
}


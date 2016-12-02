//
//  FeedVC.swift
//  spark
//
//  Created by Ricky Maisuria on 02/12/2016.
//  Copyright © 2016 Ricky Maisuria. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        let keychainResult = KeychainWrapper.standard.remove(key: KEY_UID)
        print("JESS: ID removed from keychain \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

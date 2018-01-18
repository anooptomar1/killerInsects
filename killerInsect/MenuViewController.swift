//
//  MenuViewController.swift
//  killerInsect
//
//  Created by Mac QA Acertum on 18/01/18.
//  Copyright © 2018 Jorge Martinez. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func startGame(_ sender: Any) {
        self.performSegue(withIdentifier: "gameSegue", sender: nil)
    }
    
}
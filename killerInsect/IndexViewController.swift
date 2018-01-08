//
//  IndexViewController.swift
//  killerInsect
//
//  Created by Jorge Martinez on 06/01/18.
//  Copyright © 2018 Jorge Martinez. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController {

    
    
    
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

    
    @IBAction func startGame(_ sender: UIButton) {
        self.performSegue(withIdentifier: "presentGame", sender: nil)
    }
    
    @IBAction func howToPlay(_ sender: UIButton) {
    }
    
    
}

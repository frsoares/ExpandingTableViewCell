//
//  ViewController.swift
//  ExpandingTableViewCell
//
//  Created by Francisco Soares on 12/04/18.
//  Copyright © 2018 Francisco Soares. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    
    
    @IBOutlet weak var nomeField : UITextField!
    @IBOutlet weak var horaField : UITextField!
    @IBOutlet weak var descField : UITextField!
    
    var nome : String!
    var hora : String!
    var desc : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        self.nome = nomeField.text
        self.hora = horaField.text
        self.desc = descField.text
        
    }
 

}

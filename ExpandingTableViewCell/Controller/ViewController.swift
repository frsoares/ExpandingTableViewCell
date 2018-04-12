//
//  ViewController.swift
//  ExpandingTableViewCell
//
//  Created by Francisco Soares on 10/04/18.
//  Copyright © 2018 Francisco Soares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rotationView : UIView!
    
    var expandedCell = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        UIView.animate(withDuration: 2.0, animations: {
            self.rotationView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            self.rotationView.transform = CGAffineTransform(translationX: 50, y: 100).concatenating(CGAffineTransform(scaleX: 1.2, y: 1.2))

//            self.rotationView.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.rotationView.backgroundColor = #colorLiteral(red: 0.5212948357, green: 1, blue: 0.6363615712, alpha: 1)
        }, completion: { (finished) in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: {
                UIView.animate(withDuration: 2.0, animations: {
                    self.rotationView.transform = CGAffineTransform.identity
//                    self.rotationView.transform = CGAffineTransform(rotationAngle: 0)
//                    self.rotationView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
//                                self.rotationView.transform = CGAffineTransform(translationX: 0, y: 0)
                    self.rotationView.backgroundColor = .white
                })
                
            })
            
            
            
        })
            
        
    }
    
    @IBAction func unwindToHere(_ sender: UIStoryboardSegue) {
        if let nvc = sender.source as? NewViewController {
            let aula = Aula(nome: nvc.nome, horário: nvc.hora, detalhes: nvc.desc)
            Data.sharedInstance.aulas.append(aula)
//            self.en
        }

    }
}


extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == expandedCell {
            expandedCell = -1
        }
        else {
            expandedCell = indexPath.row
        }
        tableView.reloadData()
        
        

        
    }
    
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.sharedInstance.aulas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let aula = Data.sharedInstance.aulas[indexPath.row]
        let cell : TableViewCell
        
        if indexPath.row == expandedCell {
            cell = tableView.dequeueReusableCell(withIdentifier: "expandedCell") as! ExpandedTableViewCell
            (cell as! ExpandedTableViewCell).detalhesLabel.text = aula.detalhes
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        }
        
        cell.nomeLabel.text = aula.nome
        cell.horárioLabel.text = aula.horário
        
        return cell
    }
    
}

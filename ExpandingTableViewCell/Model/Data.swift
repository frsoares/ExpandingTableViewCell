//
//  Data.swift
//  ExpandingTableViewCell
//
//  Created by Francisco Soares on 10/04/18.
//  Copyright © 2018 Francisco Soares. All rights reserved.
//

import Foundation


struct Data {
    
    var aulas : [Aula] = [
    
        Aula(nome: "Autolayout", horário: "8h00-12h00", detalhes: "Nessa aula a gente vai ver como dimensionar views."),
        Aula(nome: "MVP", horário: "8h00-10h00", detalhes: "Discussão sobre o conceito de Minimum Viable Product (MVP) e como se aplica nos projetos em execução.")
        
    ]
    
    static var sharedInstance = Data()
}

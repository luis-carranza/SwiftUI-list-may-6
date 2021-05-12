//
//  CountryModel.swift
//  LiveListProject
//
//  Created by Luis Javier Carranza on 06/05/21.
//

import Foundation

struct CountryModel: Identifiable, Hashable {
    
    var id: UUID
    var name: String
    var population: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

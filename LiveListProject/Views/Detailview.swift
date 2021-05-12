//
//  Detailview.swift
//  LiveListProject
//
//  Created by Luis Javier Carranza on 11/05/21.
//

import SwiftUI

struct DetailView: View {
    
    let country: CountryModel
    
    var body: some View {
        Text(country.name + " -> " + country.population)
    }
}

struct Detailview_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(country: CountryModel(id: UUID(), name: "asdf", population: "too many"))
    }
}

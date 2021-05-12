//
//  ContentView.swift
//  LiveListProject
//
//  Created by Luis Javier Carranza on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    
    var countryController = Countrycontroller()
    
    var body: some View {
        NavigationView {
    
            List(countryController.countries) { country in
                NavigationLink(destination: DetailView(country: country)) {
                    Text(country.name)
                }
                    
            }
            
            .navigationBarTitle("Countries", displayMode: .inline)
        } // NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
         ContentView()
        }
    }
}


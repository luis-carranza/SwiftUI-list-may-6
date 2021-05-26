//
//  ContentView.swift
//  LiveListProject
//
//  Created by Luis Javier Carranza on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var countryController = Countrycontroller()
   
    
    var body: some View {
        NavigationView {
            List {
                ForEach(countryController.countries){ country in
                    NavigationLink(destination: DetailView(country: country)) {
                        Text(country.name)
                    }
                }.onDelete(perform: deleteItem)
            }
            
            .navigationBarTitle("Countries", displayMode: .inline)

            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: AddCountryView(countryController: countryController)) {
                    Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                })
        } // NavigationView
    }
    
    
    private func deleteItem(at indexSet: IndexSet) {
        self.countryController.countries.remove(atOffsets: indexSet)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
          ContentView()
    }
}


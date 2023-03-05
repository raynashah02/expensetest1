//
//  ViewController.swift
//  expensetest1
//
//  Created by Rayna Shah on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView{
            Home()
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}

//
//  ContentView.swift
//  form_generator
//
//  Created by Jerônimo Torres on 16/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDatabaseConnection = false
    
     private func showDataBaseConnection() {
        isShowingDatabaseConnection = true
    }
    
    var body: some View {
        NavigationStack {
            VStack () {
                Button(action: showDataBaseConnection) {
                    Text("Connect to database")
                }
            }
            .padding()
            .navigationTitle("Form Generator")
            .sheet(isPresented: $isShowingDatabaseConnection) {
                DataBaseInfo()
            }
        }
    }
}

#Preview {
    ContentView()
}

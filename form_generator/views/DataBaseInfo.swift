//
//  DataBaseInfo.swift
//  form_generator
//
//  Created by Jerônimo Torres on 16/09/25.
//

import SwiftUI

struct DataBaseInfo: View {
    @State private var data = DataBaseInfoModel()
    @State private var isConnecting: Bool = false
    @State private var ConnectionError: String = ""
    
    private func ConnectToDataBase() {
        isConnecting = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            isConnecting = false
        }
    }
    
    var body: some View {
        Section(header: Text("Database Info")) {
            
            if(isConnecting) {
                ProgressView()
            }
            else {
                Grid(alignment: .leading) {
                    GridRow {
                        Text("Hostname")
                            .gridColumnAlignment(.trailing)
                        TextField("Hostname", text: $data.host)
                    }
                    GridRow {
                        Text("User")
                        TextField("user", text: $data.user)
                    }
                    GridRow {
                        Text("Password")
                        SecureField("password", text: $data.password)
                    }
                    GridRow {
                        Text("Database Name")
                        TextField("database", text: $data.database)
                    }
                    
                    if !ConnectionError.isEmpty {
                        Text(ConnectionError)
                            .bold(true)
                            .foregroundColor(.red)
                            .padding()
                    }
                    
                }
                Button(action: ConnectToDataBase) {
                    Text("Connect")
                }
            }
        }
        .padding()
    }
}



#Preview {
    DataBaseInfo()
}

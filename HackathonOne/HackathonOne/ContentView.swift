//
//  ContentView.swift
//  HackathonOne
//
//  Created by Grant Gualtieri on 9/16/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            BkgdImage()
            VStack {
                Text("Welcome to Anonymous")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Write")
                            .foregroundColor(Color(red: 0.3, green: 0.2, blue: 0.8, opacity: 1.0))
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Read")
                            .foregroundColor(Color(red: 0.3, green: 0.2, blue: 0.8, opacity: 1.0))
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

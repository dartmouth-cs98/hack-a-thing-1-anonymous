//
//  ContentView.swift
//  HackathonOne
//
//  Created by Grant Gualtieri on 9/16/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var goToWriteView = false
    @State var goToReadView = false

    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                BkgdImage()
                    .offset(y: -58)
                VStack {
                    NavigationLink(destination: WriteView(), isActive: $goToWriteView) { EmptyView() }
                    NavigationLink(destination: ReadView(), isActive: $goToReadView) { EmptyView() }
                    
                    Text("Welcome to Anonymous")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                    HStack {
                        Button(action: {self.goToWriteView = true}) {
                            Text("Write")
                                .foregroundColor(Color(red: 0.3, green: 0.2, blue: 0.8, opacity: 1.0))
                        }
                        Button(action: {self.goToReadView = true}) {
                            Text("Read")
                                .foregroundColor(Color(red: 0.3, green: 0.2, blue: 0.8, opacity: 1.0))
                        }
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

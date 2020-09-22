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
                        .foregroundColor(.green)
                        .multilineTextAlignment(.center)
                    HStack {
                        Button(action: {self.goToWriteView = true}) {
                            Text("Write")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                        Button(action: {self.goToReadView = true}) {
                            Text("Read")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
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

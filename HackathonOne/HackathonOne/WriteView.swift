//
//  WriteView.swift
//  HackathonOne
//
//  Created by Eileen Xia on 9/18/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

import SwiftUI
import UIKit


struct WriteView: View {
    @State var post: String = ""
    @State var goToReadView = false
        
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(destination: ReadView(), isActive: $goToReadView) { EmptyView() }
                
                TextField("Write an anonymous post...", text: $post)
                Text("You wrote: \(post)")
                Button(action: {self.goToReadView = true}) {
                    Text("Submit")
                        .foregroundColor(Color(red: 0.3, green: 0.2, blue: 0.8, opacity: 1.0))
                }
            }.padding()
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}

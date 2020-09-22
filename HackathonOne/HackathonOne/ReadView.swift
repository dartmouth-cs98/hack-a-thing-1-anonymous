//
//  ReadView.swift
//  HackathonOne
//
//  Created by Eileen Xia on 9/18/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

import SwiftUI

struct ReadView: View {
        
    var body: some View {
        NavigationView {
            List {
                ForEach(listItems, id: \.self) { item in Text(item.name)}
                }
                .navigationBarTitle(Text("Past Posts"))
        }
        
    }
}

struct ReadView_Previews: PreviewProvider {
    static var previews: some View {
        ReadView()
    }
}

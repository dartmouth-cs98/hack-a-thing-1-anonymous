//
//  BkgdImage.swift
//  HackathonOne
//
//  Created by Eileen Xia on 9/18/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

import SwiftUI

struct BkgdImage: View {
    var body: some View {
        Image("anonimage")
            .padding(100.0)
//            .clipShape(Circle())
            .overlay(Circle().stroke(Color(red: 0.5, green: 0.8, blue: 0.9, opacity: 1.0), lineWidth: 15))
            .shadow(radius: 25)
    }
}

struct BkgdImage_Previews: PreviewProvider {
    static var previews: some View {
        BkgdImage()
    }
}

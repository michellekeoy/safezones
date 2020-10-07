//
//  MapView.swift
//  calendar
//
//  Created by Michelle on 28/8/2020.
//  Copyright © 2020 michellekeoy. All rights reserved.
//

import SwiftUI

struct MapView: View {
    @State var toLibe: Bool = false

    var body: some View{
    
        VStack{
        
            NavigationLink(destination: LibeSlope(), isActive: $toLibe){
                EmptyView()
            }
            Image("heatmap")
                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .onTapGesture {
                    self.toLibe = true
                    
            }
        

        }.padding(.top, -130)
            .padding(.bottom, -30)
            .padding(.horizontal, -8)
    }
}

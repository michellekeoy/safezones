//
//  MainScreen.swift
//  calendar
//
//  Created by Michelle on 28/8/2020.
//  Copyright © 2020 michellekeoy. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    
    @State var mapView: Bool = false
    @State var listView: Bool = false

    var body: some View{
    
        ZStack{

            Image("background")
               .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
               .resizable()
               .aspectRatio(contentMode: .fill)
               .padding(-100)
               
            
            VStack{
            
                NavigationLink(destination: MapView(), isActive: $mapView){
                    EmptyView()
                }
            
                NavigationLink(destination: ListView(), isActive: $listView){
                    EmptyView()
                }
                
              
                Text("SafeZones")
                    .padding(20)
                    .font(.custom("Quadran-Black", size: 46))
                    .foregroundColor(.white)

                
                Button(action:{self.listView = true}){
                    Text("View by Location")
                        .foregroundColor(.white)
                }.padding(20)
                .padding(.top, 90)
                
                
                Button(action:{self.mapView = true}){
                    Text("View Map")
                        .foregroundColor(.white)
                }.padding(20)
            }
                
        }
    }
}

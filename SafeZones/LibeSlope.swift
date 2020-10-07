//
//  CornellHealth.swift
//  calendar
//
//  Created by Michelle on 27/8/2020.
//  Copyright © 2020 michellekeoy. All rights reserved.
//

import SwiftUI

struct LibeSlope: View {
        
    @State var rating: Int = 0
    @State var updateState: Bool = false
    @State var selected = 0
    var body: some View{
        
        VStack{
        
            ZStack {
                
                Image("libeslope")
                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    .resizable()
                    .frame(width: 500, height: 370)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, -170)
                
                Text("Libe Slope")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.trailing, 170)
                    .padding(.top, 55)
                
                Text("0.2 miles away")
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .padding(.trailing, 200)
                    .padding(.top, 120)
            }
            
    
            
                HStack{
                    Image("danger")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        .resizable()
                        .frame(width: 20 , height: 20)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                    
                     Text("Safety Rating: High Density")
                         .font(.headline)
                         .foregroundColor(Color.red)
                }.padding(.top,20)
            
                
                Picker(selection: $selected, label: Text(""), content: {
                    Text("Average Rating").tag(0)
                    Text("Update Rating").tag(1)
                }).pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 90)
                    .padding(.vertical, 15)
                
                if self.selected == 0 {
                    
                    Image("libebar")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        .resizable()
                        .frame(width: 340, height: 260)
                        .aspectRatio(contentMode: .fit)
                    
                    Divider()
                        .frame(width: 500)
           
                    HStack{
                   
                        Image("clock")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .resizable()
                            .frame(width: 20 , height: 20)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                     if !updateState{
                        Text("Last Updated: One Hour Ago")
                            .font(.system(size: 16))
                        }
                        
                        if updateState{
                                           
                               Text("Last Updated: Just Now")
                                   .font(.system(size: 16))
                                   .foregroundColor(.green)
                                       
                                           }
                    }.padding(.top, 5)
                    
                }
                
                if self.selected == 1 {
                    
                    Text("Select new safety rating based on crowdedness:")
                        .padding(.horizontal, 130)
                        .padding(.vertical, 20)
                        .lineLimit(5)
                        .multilineTextAlignment(.center)
                    
                    
                    RatingView(rating: $rating)
   

                    Spacer()
                    
                    Button(action: {self.updateState = true}){
                        Text("Confirm")
                    }
               
                    if updateState{
                    
                        Text("Last Updated: Just Now")
                            .font(.system(size: 16))
                            .foregroundColor(.green)
                                
                    }
                
            }
        }
    }
}

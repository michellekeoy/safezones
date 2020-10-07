//
//  List.swift
//  calendar
//
//  Created by Michelle on 27/8/2020.
//  Copyright © 2020 michellekeoy. All rights reserved.
//

import SwiftUI
import MapKit

struct ListView: View {
    
    @State var string: String = ""
    @State var libeSlope: Bool = false
    @State var okenshieldsHall: Bool = false
    @State var agQuad: Bool = false
    @State var sort: Bool = false
    var body: some View {
        
        VStack {
            
            NavigationLink(destination: LibeSlope(), isActive: $libeSlope){
                EmptyView()
            }
            
            NavigationLink(destination: OkenshieldsDining(), isActive: $okenshieldsHall){
                EmptyView()
            }
            NavigationLink(destination: AgQuad(), isActive: $agQuad){
                 EmptyView()
             }

            HStack{
                Text("Locations")
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {self.sort.toggle()}){
                if self.sort {
                   Text("Sort by Distance")
                    }
                if !self.sort {
                    Text("Sort by Safety")
                    }
                }.padding(.top, 3)
            }.padding(.horizontal, 15)
            .padding(.top, -20)
            
            SearchBar.init(text: $string)
            
            if !self.sort{
                List {
                    Button(action: {}){
                        HStack{
                            Circle()
                                .fill(Color.orange)
                                .frame(width: 15.0, height: 15.0)
                            Text("Flora Rose House")
                            Spacer()
                            Text("0.1 miles")
                        }.padding(.vertical, 10)
                        
                    }
                    
                    Button(action: {}){
                        HStack{
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15.0, height: 15.0)
                            Text("Noyes Fitness Center")
                            Spacer()
                            Text("0.1 miles")
                        }.padding(.vertical, 10)
                           
                    }
                 
                    Button(action: {self.libeSlope = true}){
                        HStack{
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15.0, height: 15.0)
                            Text("Libe Slope (Open Area)")
                            Spacer()
                            Text("0.2 miles")
                        }.padding(.vertical, 10)
                       
                    }
                    
                    
                    Button(action: {}){
                        HStack{
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15.0, height: 15.0)
                            Text("Hans Bethe House")
                            Spacer()
                            Text("0.2 miles")
                        }.padding(.vertical, 10)
                        
                    }
                    
                    Button(action: {self.okenshieldsHall = true}){
                        HStack{
                            Circle()
                                .fill(Color.orange)
                                .frame(width: 15.0, height: 15.0)
                            Text("Okenshields")
                            Spacer()
                            Text("0.3 miles")
                        }.padding(.vertical, 10)
                    }
          
                    
                    Button(action: {}){
                        HStack{
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15.0, height: 15.0)
                            Text("Arts Quad (Open Area)")
                            Spacer()
                            Text("0.4 miles")
                        }.padding(.vertical, 10)
                    }
                    
                    Button(action: {}){
                        HStack{
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15.0, height: 15.0)
                            Text("Duffield Hall")
                            Spacer()
                            Text("0.5 miles")
                        }.padding(.vertical, 10)
                    }
                    
                    Group {
                               
                        Button(action: {}){
                           HStack{
                            Circle()
                                .fill(Color.orange)
                                .frame(width: 15.0, height: 15.0)
                               Text("Statler Hall and Auditorium")
                               Spacer()
                               Text("0.6 miles")
                           }.padding(.vertical, 10)
                       }
                       
                        
                        
                        Button(action: {self.agQuad = true}){
                               HStack{
                                   Circle()
                                       .fill(Color.green)
                                       .frame(width: 15.0, height: 15.0)
                                   Text("Ag Quad (Open Area)")
                                   Spacer()
                                   Text("0.7 miles")
                               }.padding(.vertical, 10)
                           }
                           
                        
                        Button(action: {}){
                               HStack{
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: 15.0, height: 15.0)
                                   Text("Upson Hall")
                                   Spacer()
                                   Text("0.7 miles")
                               }.padding(.vertical, 10)
                           }

                      Button(action: {}){
                          HStack{
                            Circle()
                                .fill(Color.green)
                                .frame(width: 15.0, height: 15.0)
                              Text("Mannible Cafe")
                              Spacer()
                              Text("0.8 miles")
                          }.padding(.vertical, 10)
                      }
                       
                        Button(action: {}){
                               HStack{
                                   Circle()
                                       .fill(Color.red)
                                       .frame(width: 15.0, height: 15.0)
                                   Text("Bartels Hall")
                                   Spacer()
                                   Text("0.8 miles")
                               }.padding(.vertical, 10)
                           }

                       Button(action: {}){
                           HStack{
                            Circle()
                                .fill(Color.green)
                                .frame(width: 15.0, height: 15.0)
                               Text("Risley Hall")
                               Spacer()
                               Text("0.8 miles")
                           }.padding(.vertical, 10)
                       }
                       
                        Button(action: {}){
                            HStack{
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 15.0, height: 15.0)
                                Text("Appel Dining Hall")
                                Spacer()
                                Text("1.0 miles")
                            }.padding(.vertical, 10)
                        }
                        
                        Button(action: {}){
                            HStack{
                                Circle()
                                    .fill(Color.orange)
                                    .frame(width: 15.0, height: 15.0)
                                Text("Robert Purcell Community Center")
                                Spacer()
                                Text("1.2 miles")
                            }.padding(.vertical, 10)
                        }
                      
                
                
                    }
                }
            }
            
            if self.sort{
                
                List {
                    
                        Button(action: {self.agQuad = true}){
                               HStack{
                                   Circle()
                                       .fill(Color.green)
                                       .frame(width: 15.0, height: 15.0)
                                   Text("Ag Quad (Open Area)")
                                   Spacer()
                                   Text("0.7 miles")
                               }.padding(.vertical, 10)
                           }
                           
                        
                        Button(action: {}){
                               HStack{
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: 15.0, height: 15.0)
                                   Text("Upson Hall")
                                   Spacer()
                                   Text("0.7 miles")
                               }.padding(.vertical, 10)
                           }

                      Button(action: {}){
                          HStack{
                            Circle()
                                .fill(Color.green)
                                .frame(width: 15.0, height: 15.0)
                              Text("Mannible Cafe")
                              Spacer()
                              Text("0.8 miles")
                          }.padding(.vertical, 10)
                      }
                    
                    Button(action: {}){
                        HStack{
                         Circle()
                             .fill(Color.green)
                             .frame(width: 15.0, height: 15.0)
                            Text("Risley Hall")
                            Spacer()
                            Text("0.8 miles")
                        }.padding(.vertical, 10)
                    }
                    Group {
                    
                          Button(action: {}){
                              HStack{
                                  Circle()
                                      .fill(Color.orange)
                                      .frame(width: 15.0, height: 15.0)
                                  Text("Flora Rose House")
                                  Spacer()
                                  Text("0.1 miles")
                              }.padding(.vertical, 10)
                              
                          }
                    Button(action: {self.okenshieldsHall = true}){
                             HStack{
                                 Circle()
                                     .fill(Color.orange)
                                     .frame(width: 15.0, height: 15.0)
                                 Text("Okenshields")
                                 Spacer()
                                 Text("0.3 miles")
                             }.padding(.vertical, 10)
                         }
                          

                          Button(action: {}){
                             HStack{
                              Circle()
                                  .fill(Color.orange)
                                  .frame(width: 15.0, height: 15.0)
                                 Text("Statler Hall and Auditorium")
                                 Spacer()
                                 Text("0.6 miles")
                             }.padding(.vertical, 10)
                         }
                        
                        Button(action: {}){
                           HStack{
                               Circle()
                                   .fill(Color.orange)
                                   .frame(width: 15.0, height: 15.0)
                               Text("Robert Purcell Community Center")
                               Spacer()
                               Text("1.2 miles")
                           }.padding(.vertical, 10)
                       }
                     
               
                          Button(action: {}){
                              HStack{
                                  Circle()
                                      .fill(Color.red)
                                      .frame(width: 15.0, height: 15.0)
                                  Text("Noyes Fitness Center")
                                  Spacer()
                                  Text("0.1 miles")
                              }.padding(.vertical, 10)
                                 
                          }
                       
                          Button(action: {self.libeSlope = true}){
                              HStack{
                                  Circle()
                                      .fill(Color.red)
                                      .frame(width: 15.0, height: 15.0)
                                  Text("Libe Slope (Open Area)")
                                  Spacer()
                                  Text("0.2 miles")
                              }.padding(.vertical, 10)
                             
                          }
                          
                          
                          Button(action: {}){
                              HStack{
                                  Circle()
                                      .fill(Color.red)
                                      .frame(width: 15.0, height: 15.0)
                                  Text("Hans Bethe House")
                                  Spacer()
                                  Text("0.2 miles")
                              }.padding(.vertical, 10)
                              
                          }
                          
         
                          Button(action: {}){
                              HStack{
                                  Circle()
                                      .fill(Color.red)
                                      .frame(width: 15.0, height: 15.0)
                                  Text("Arts Quad (Open Area)")
                                  Spacer()
                                  Text("0.4 miles")
                              }.padding(.vertical, 10)
                          }
                          
                
                          Button(action: {}){
                              HStack{
                                  Circle()
                                      .fill(Color.red)
                                      .frame(width: 15.0, height: 15.0)
                                  Text("Duffield Hall")
                                  Spacer()
                                  Text("0.5 miles")
                              }.padding(.vertical, 10)
                          }
    
                             
                              Button(action: {}){
                                     HStack{
                                         Circle()
                                             .fill(Color.red)
                                             .frame(width: 15.0, height: 15.0)
                                         Text("Bartels Hall")
                                         Spacer()
                                         Text("0.8 miles")
                                     }.padding(.vertical, 10)
                                 }
                           
                      
                          }
                      }
                
                
            }
        }
    }
}



struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
 
            TextField("Search", text: $text)
                .padding(.vertical, 7)
                .padding(.leading, 12)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
ListView()
        
    }
}

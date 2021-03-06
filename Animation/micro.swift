//
//  micro.swift
//  Animation
//
//  Created by Mirko Pietro Leone on 24/03/22.
//

import SwiftUI

var MinSize : CGFloat = 0
var MaxSize : CGFloat = 200
var initx : CGFloat = 0
var inity : CGFloat = 40
var finalx : CGFloat = 414
var finaly : CGFloat = -700

//
struct micro: View {
    @State var isAnimated:Bool = false
    @State var isAnimated2:Bool = false
    @State var isanimated3:Bool = false
    @State var duration:Double = 0.6
    @State var duration1:Double = 0.7
    @State var duration2: Double = 0.7
    let timer5 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        @State private var counter5 = 0
    
    @State var paperIsAnimated:Bool = false
    @State var paperDUration:Double = 1
    
    var body: some View {
        
        NavigationView{
            
        ZStack{
            
            Color(UIColor.systemGray6)
            Image("prova")
                .resizable()
                .frame(height: 500)
                .position(x: 207, y: 250)

            Spacer()

            
            HStack{
                //            HEART
                
            Button(){
                isAnimated.toggle()
                
                if isAnimated2 == false {
                withAnimation(.linear(duration: duration)){
                    isAnimated2 = true
                    }

                }
                else {
                    isAnimated2 = false
                }

            }label: {
                ZStack{
                    Image(systemName: "heart.fill") .resizable()
                      
                        .foregroundColor(isAnimated ? Color.red : Color.white)
                
                Image(systemName: "heart")
                    .resizable()
                    
                    .foregroundColor(isAnimated ? Color.red : Color.black)
                    .animation(.linear(duration: duration), value: isAnimated)
                }
               
                    }
                
            .frame(width: 35, height: 35)
            .position(x: 30, y: 40)
                
                Spacer()
                
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: isAnimated2 ? 200 : 0, height: isAnimated2 ? 200 : 0)
                    .position(x: 68, y: -250)
                    .foregroundColor(Color.white)
                    .opacity(isAnimated2 ? 0 : 0.9)
                
                

                    
//                AIRPLANE
                
                
           Spacer()
               
              
                Button{

                    if isanimated3 == false {
                    withAnimation(.linear(duration: duration2)){
                        isanimated3 = true
                        }

                    }
                    else {
                        isanimated3 = false
                        withAnimation(.linear(duration: duration2)){
                            isanimated3 = true
                            }
                    }
                } label: {
                    ZStack{
//                      PAPER ICON
                    Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 35, height: 35, alignment: .center)
                            .foregroundColor(Color.black)
                   
                        Image(systemName: "paperplane.fill")
                            .resizable()
                            .foregroundColor(Color.white)
                            .frame(width: isanimated3 ? MaxSize : MinSize, height: isanimated3 ? MaxSize : MinSize)
                            .position(x:isanimated3 ? finalx : initx, y: isanimated3 ? finaly : inity )

                    }
                }.frame(width: 35, height: 34)
                    .position(x: -190, y: 40)
                    
               
                }.frame(width: 414, height: 80)
                .position(x: 207, y: 535)
            
//            PAPER ANIMATION
           
        }.foregroundColor(Color.black)
            .navigationTitle("Micro-interactions")
        
        }
    }
}


struct micro_Previews: PreviewProvider {
    static var previews: some View {
        micro()
    }
}



//
//  MiniChartsView.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 13/09/21.
//

import SwiftUI

struct MiniChartsView: View {
    
    let rectangleWidth : CGFloat = 140
    let rectangleHeight : CGFloat = 140
    let spacerWidth : CGFloat = 10

    var body: some View {
        ZStack{
            VStack{
                HStack{
                    VStack{
                        Text("25")
                            .font(.system(size: 48, weight: .semibold, design: .rounded))
                            
                        Text("Relatos")
                            .font(.system(size: 20, weight: .thin, design: .rounded))
                    }
                    .foregroundColor(.white)
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color("StartGreen"), Color("EndGreen")]),
                                startPoint: .topLeading,
                                endPoint: .trailing
                        )
                    )
                    .cornerRadius(30)
                    
                    Spacer()
                        .frame(width: spacerWidth)
                    
                    VStack{
                        Text("43")
                            .font(.system(size: 48, weight: .semibold, design: .rounded))
                            
                        Text("Comentários")
                            .font(.system(size: 20, weight: .thin, design: .rounded))
                    }
                    .foregroundColor(.white)
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color("StartGreen"), Color("EndGreen")]),
                                startPoint: .topLeading,
                                endPoint: .trailing
                        )
                    )
                    .cornerRadius(30)
                }
                
                Spacer()
                    .frame(height: spacerWidth)
                
                HStack{
                    VStack{
                        Text("50")
                            .font(.system(size: 48, weight: .semibold, design: .rounded))
                            
                        Text("Usuários")
                            .font(.system(size: 20, weight: .thin, design: .rounded))
                    }
                    .foregroundColor(.white)
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color("StartGreen"), Color("EndGreen")]),
                                startPoint: .topLeading,
                                endPoint: .trailing
                        )
                    )
                    .cornerRadius(30)
                    
                    Spacer()
                        .frame(width: spacerWidth)
                    
                    VStack{
                        Text("24")
                            .font(.system(size: 48, weight: .semibold, design: .rounded))
                            
                        Text("Estados")
                            .font(.system(size: 20, weight: .thin, design: .rounded))
                    }
                    .foregroundColor(.white)
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color("StartGreen"), Color("EndGreen")]),
                                startPoint: .topLeading,
                                endPoint: .trailing
                        )
                    )
                    .cornerRadius(30)
                }
            }
        }
    }
}


struct MiniChartsView_Previews: PreviewProvider {
    static var previews: some View {
        MiniChartsView()
    }
}

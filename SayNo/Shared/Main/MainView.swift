//
//  MainView.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 12/09/21.
//

import SwiftUI
import ModalView

struct MainView: View {
    var body: some View {
        ModalPresenter{
            MainViewHeader()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack (spacing: 10){
                    ForEach(0..<20) {_ in
                        MainViewPost()
                    }
                }
            }
        }
        .padding([.top, .horizontal], 40)
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [Color("StartGreen"), Color("EndGreen")]),
                    startPoint: .topLeading,
                    endPoint: .trailing
            )
        )
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct MainViewHeader: View {
    var body: some View{
        ModalPresenter {
            
            HStack{
                Text("SayNo")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                ModalLink(destination: NewReportView()) {
                    Image(systemName: "plus.bubble.fill")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
                        .frame(width: 30.0, height: 30.0)
                        
                }
                
                ModalLink(destination: InfoView()) {
                    Image(systemName: "info.circle.fill")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
                        .frame(width: 30.0, height: 30.0)
                        
                }
            }
        }
    }
}

struct MainViewPost: View{
    var body: some View{
        ModalPresenter{
            ZStack{
                Color.white.opacity(0.5)
                    .frame(width: 300, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                    .blur(radius: 1)

                VStack(alignment: .leading, spacing: 16) {
                    Text("Title")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    
                    Text("Aqui vai a descricao do seu evento, este lugar é onde voce descreve o seu evento da melhor forma para poder chamar o seu público para a festa")
                        .font(.footnote)
                    
                    NavigationLink(destination: ReportView()){
                        Spacer()
                        
                        Text("Ver detalhes")
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .frame(width: 300, height: 150)
                .foregroundColor(Color.black.opacity(0.8))
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

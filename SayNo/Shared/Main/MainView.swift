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
        }
    }
}

struct MainViewHeader: View {
    var body: some View{
        ModalPresenter {
            
            HStack{
                Text("SayNo")
                
                Spacer()
                
                ModalLink(destination: NewReportView()) {
                    Image(systemName: "plus.bubble.fill")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30.0, height: 30.0)
                        
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

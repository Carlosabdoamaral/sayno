//
//  InfoView.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 13/09/21.
//

import SwiftUI
import ModalView

struct InfoView: View {
    var body: some View {
        ModalPresenter{
            Form{
                Section(){
                    VStack(alignment: .leading){
                        Text("Informacoes sobre a plataforma")
                            .font(.title2)
                        
                        Spacer()
                            .frame(height: 15)
                        Divider()
                        Spacer()
                            .frame(height: 15)
                        
                        Text("Aqui vai o texto todo sobre o lance do zxyz e enfim")
                    }
                }
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

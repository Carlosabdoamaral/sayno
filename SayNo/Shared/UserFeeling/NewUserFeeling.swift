//
//  NewUserFeeling.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 13/09/21.
//

import SwiftUI
import ModalView
import Combine

struct NewUserFeeling: View {
    @State var notifications : Bool = false
    @State var title : String = ""
    @State var description : String = ""
    @State private var numOfPeople = "0"
    @State private var selectedStrength = "Selecione..."
    let strengths = ["Não estou nos melhores dias", "Medium", "Mature"]
    
    func post(){
        
    }
    var body: some View {
        
        ModalPresenter{
            Form {
                Section(header: Text("Postar relato")) {
                    Picker("Como está sendo seu dia?", selection: $selectedStrength) {
                        Text("Não estou nos melhores dias").tag("Tag")
                        Text("Tá bom").tag("Tag2")
                    }
                }
                
                Section() {
                    Toggle("Notificacoes", isOn: $notifications)
                    
                    Button(action: post, label: {
                        Text("Publicar")
                            .multilineTextAlignment(.center)
                            .frame(width: 290)
                    })
                }
            }.navigationBarTitle("Publicar relato")
        }
    }
}

struct NewUserFeeling_Previews: PreviewProvider {
    static var previews: some View {
        NewUserFeeling()
    }
}

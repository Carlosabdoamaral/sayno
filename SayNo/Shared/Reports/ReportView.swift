import SwiftUI
import ModalView

struct ReportView: View {
    
    //Relato
    @State var title : String = ""
    @State var description : String = ""
    
    
    //Comentário
    @State var wantToComment : Bool = false
    @State var commentContent : String = ""
    @State var commentReact : Int = 0
    @State var commentDate : Int = 0
    
    //Reagir
    @State var wantToReact : Bool = true

    //Frase motivacional
    @State var wantToLetAPhrase : Bool = true

    
    let reactions = ["Vai dar tudo certo!", "Você é incrível!", "Amei", "Você não está sozinho(a)!", "Amei", "Apoio", "Amei", "Apoio", "Amei", "Apoio"]

    let motivacionalPhrase = ["Amei", "Apoio", "Amei", "Amei", "Amei", "Amei"]
    
    func postComment(){
        print("Postou")
    }
    
    var body: some View {
        ModalPresenter{
            Form {
                Section(header: Text("Relato 01")) {
                    Text("Título")
                        .font(.largeTitle)
                    Text("Título")
                        .font(.body)
                }
                
                Section(header: Text("Escreva uma mensagem positiva...")) {
                    Toggle("Deixar um comentário?", isOn: $wantToComment)
                    Toggle("Deixar uma reação", isOn: $wantToReact)
                    Toggle("Deixar uma frase motivacional", isOn: $wantToLetAPhrase)
                }
                
                if wantToComment == true{
                    Section(header: Text("Escreva uma mensagem positiva...")){
                        TextEditor(text: $commentContent)
                        
                        HStack{
                            Spacer()
                            Button("Postar" , action: postComment)
                            Spacer()
                        }
                    }
                }
                
                if wantToLetAPhrase == true{
                    Section(header: "Selecione uma frase motivacional"){
                        VStack(alignment: .leading){
                            ForEach(0..<10){i in
                                VStack{
                                    HStack{
                                        
                                        if i == 0{
                                            Image(systemName: "face.smiling.fill")
                                            Text("\(reactions[i])")
                                                .onTapGesture {
                                                    print("Selecionado \(i)")
                                                }
                                        }
                                        
                                        else if i == 1{
                                            Image(systemName: "star.fill")
                                            Text("\(reactions[i])")
                                                .onTapGesture {
                                                    print("Selecionado \(i)")
                                                }
                                        }
                                        
                                        else if i == 2{
                                            Image(systemName: "suit.heart.fill")
                                            Text("\(reactions[i])")
                                                .onTapGesture {
                                                    print("Selecionado \(i)")
                                                }
                                        }
                                        
                                        else if i == 3{
                                            Image(systemName: "person.3.fill")
                                            Text("\(reactions[i])")
                                                .onTapGesture {print("Selecionado \(i)")}
                                        }
                                    }
                                }
                            Divider()
                            }
                        }
                    }
                }

                if wantToReact == true{
                    VStack (alignment: .leading){
                        ForEach(0..<10){i in
                            
                            VStack{
                                HStack{
                                    
                                    if i == 0{
                                        Image(systemName: "face.smiling.fill")
                                        Text("\(reactions[i])")
                                            .onTapGesture {
                                                print("Selecionado \(i)")
                                            }
                                    }
                                    
                                    else if i == 1{
                                        Image(systemName: "star.fill")
                                        Text("\(reactions[i])")
                                            .onTapGesture {
                                                print("Selecionado \(i)")
                                            }
                                    }
                                    
                                    else if i == 2{
                                        Image(systemName: "suit.heart.fill")
                                        Text("\(reactions[i])")
                                            .onTapGesture {
                                                print("Selecionado \(i)")
                                            }
                                    }
                                    
                                    else if i == 3{
                                        Image(systemName: "person.3.fill")
                                        Text("\(reactions[i])")
                                            .onTapGesture {
                                                print("Selecionado \(i)")
                                            }
                                    }
                                    
                                    
                                }
                            }
                            
                            Divider()
                        }
                        
                    }
                }
                
            }.navigationBarTitle("Publicar relato")
        }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}

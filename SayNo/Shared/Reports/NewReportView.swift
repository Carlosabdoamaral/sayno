import SwiftUI
import ModalView

struct NewReportView: View {
    @State var playNotificationSounds : Bool = false
    @State var username : String = ""
    @State var title : String = ""
    @State var description : String = ""
    @State var notifications : Bool = false
    
    func post(){
        print("Postou")
    }

    var body: some View {
        ModalPresenter{
            Form {
                Section(header: Text("Postar relato")) {
                    TextField("Título", text: $title)
                    TextEditor(text: $description)
                        .lineLimit(7)
                }
                
                Section() {
                    Toggle("Notificacoes", isOn: $notifications)
                }
                
                
                if title != ""{
                    Section(header: Text("Pré Visualizacao")){
                        VStack(alignment: .leading){
                            Text("\(title)")
                                .font(.title)
                            
                            Text("DD/M")
                                .font(.footnote)
                                                    
                            Text("\(description)")
                                .font(.subheadline)
                                .lineLimit(3)
                        }
                        
                        Button(action: post, label: {
                            Text("Publicar")
                                .multilineTextAlignment(.center)
                                .frame(width: 290)
                        })
                    }
                }
                else{
                    
                }
                
            }.navigationBarTitle("Publicar relato")
        }
    }
}

struct NewReportView_Previews: PreviewProvider {
    static var previews: some View {
        NewReportView()
    }
}

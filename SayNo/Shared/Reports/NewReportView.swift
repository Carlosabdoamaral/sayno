import SwiftUI
import ModalView

struct NewReportView: View {
    @State var playNotificationSounds : Bool = false
    @State var beAnonymous : Bool = true
    @State var username : String = ""
    @State var title : String = ""
    @State var description : String = ""
    
    func post(){
        print("Postou")
    }

    var body: some View {
        ModalPresenter{
            
            Form {
                Section(header: Text("Sobre voce")) {
                    Toggle("Postar anonimamente", isOn: $beAnonymous)
                    
                    if beAnonymous == false{
                        TextField("Username", text: $username)
                    }
                }
                
                Section(header: Text("Desabafe")) {
                    TextField("Título", text: $title)
                    TextEditor(text: $description)
                        .lineLimit(7)
                }
                
                Section(header: Text("Pré Visualizacao")){
                    VStack(alignment: .leading){
                        if beAnonymous == false{
                            Text("\(username)")
                                .font(.caption)
                        }
                        
                        Text("\(title)")
                            .font(.title)
                                                
                        Text("\(description)")
                            .font(.subheadline)
                            .lineLimit(3)
                    }
                    
                    Button(action: post, label: {
                        Text("Publicar")
                            .multilineTextAlignment(.center)
                            .frame(width: 310)
                    })
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

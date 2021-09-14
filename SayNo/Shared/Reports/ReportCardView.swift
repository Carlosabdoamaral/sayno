import SwiftUI
import ModalView

struct ReportCardView: View {
    var body: some View {
        ModalPresenter{
            ZStack{
                VStack(alignment: .leading, spacing: 16) {
                    Text("Title")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    
                    Text("Aqui vai a descricao do seu evento, este lugar é onde voce descreve o seu evento da melhor forma para poder chamar o seu público para a festa")
                        .font(.footnote)
                    
                    ModalLink(destination: ReportView()){
                        Spacer()
                        
                        Text("Ver detalhes")
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .frame(width: 300, height: 250)
                .foregroundColor(Color.black.opacity(0.8))
                .background(Color.white.opacity(1))
                .cornerRadius(30)
            }
        }
    }
}

struct ReportCardView_Previews: PreviewProvider {
    static var previews: some View {
        ReportCardView()
    }
}

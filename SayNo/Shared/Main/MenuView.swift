import SwiftUI

struct MenuView: View {
    
    @State private var showModal = false
    
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6759886742, green: 0.9469802976, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                ZStack {
                    Circle()
                        .frame(width: 400, height: 400)
                        .offset(x: 150, y: -200)
                        .foregroundColor(Color.purple.opacity(0.4))
                        .blur(radius: 8)
                    Circle()
                        .frame(width: 300, height: 300)
                        .offset(x: -100, y: -125)
                        .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                        .blur(radius: 8)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 10) {
                            Spacer()
                                .frame(height: 20)
                            HStack{
                                Text("Say No!")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                Spacer()
                                
                                Image(systemName: "plus.bubble.fill")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30.0, height: 30.0)
                            }
                            .padding(.horizontal, 30)
                            .padding(.bottom, 20)
                            
                            
                            ForEach(0..<10) {_ in
                                ReportInfo()
                                Spacer()
                                    .frame(height: 2)
                            }
                        }.padding([.bottom, .horizontal], 20)
                    }
                    .shadow(color: .white.opacity(0.6), radius: 10)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct ReportInfo: View {
    var body: some View{
        ZStack{
            Color.white.opacity(0.5)
                .frame(width: 300, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                .blur(radius: 1)

            VStack(alignment: .leading, spacing: 16) {
                Text("Nome do evento")
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


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

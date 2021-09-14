import SwiftUI
import ModalView

struct MainView: View {
    var body: some View {
        ModalPresenter{
            ScrollView(.vertical, showsIndicators: false){
                MainViewHeader()
                    .padding(5)
            
                MiniChartsView()
                    .padding()
                
                Spacer()
                    .frame(height: 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (spacing: 10){
                        ForEach(0..<20) {_ in
                            ReportCardView()
                        }
                    }
                    .padding(.leading, 10)
                }
            }
            Spacer()
        }
        .padding(.top, 40)
        .background(Color.black)
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
                
                ModalLink(destination: NewUserFeeling()) {
                    Image(systemName: "face.smiling.fill")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
                        .frame(width: 30.0, height: 30.0)
                }
                
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

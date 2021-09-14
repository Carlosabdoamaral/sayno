import SwiftUI
import ModalView

struct ModalTest: View {
    var body: some View {
        ModalPresenter {
            ModalLink(destination: ModalContentTest()) {
                Text("Hello")
            }
        }
    }
}

struct ModalTest_Previews: PreviewProvider {
    static var previews: some View {
        ModalTest()
    }
}

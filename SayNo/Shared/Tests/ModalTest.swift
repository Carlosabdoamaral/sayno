//
//  ModalTest.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 12/09/21.
//

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

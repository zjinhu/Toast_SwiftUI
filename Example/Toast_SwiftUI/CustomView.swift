//
//  CustomView.swift
//  Example
//
//  Created by iOS on 2023/5/17.
//

import SwiftUI
import Toast_SwiftUI

extension ToastManager {
    //展示自定义View//自己可以重写替换
    func showCustom(){
        show {
            CustomView()
        }
    }
}


struct CustomView: View {
    var body: some View {
        HStack{
            Image(systemName: "square.and.arrow.up.on.square")
            
            Text("texttexttexttexttext")

        }
        .padding(10)
        .foregroundColor(.white)
        .background(
            Color.black
                .opacity(0.8)
                .cornerRadius(10)
        )
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}

//
//  ContentView.swift
//  Toast_SwiftUI
//
//  Created by iOS on 2023/5/12.
//

import SwiftUI
import Toast_SwiftUI
struct ContentView: View {
    @EnvironmentObject private var toast: ToastManager
    
    var body: some View {
        List {
 
            Section {
                Button {
                    toast.position = .bottom
                    toast.showText("Toast at bottom")
  
                } label: {
                    Text("Toast at bottom")
                }
                
                Button {
                    toast.position = .top
                    toast.showText("Toast at top")
  
                } label: {
                    Text("Toast at top")
                }

            } header: {
                Text("Toast")
            }
 
        }
        .addToast(toast)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ToastManager())
    }
}

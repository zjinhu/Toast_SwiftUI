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
                    toast.position = .top
                    toast.showText("Toast at top")
  
                } label: {
                    Text("Toast at top")
                }
                
                Button {
                    toast.position = .top
                    toast.showText("Compares less than or equal to all positive numbers, but greater than zero. If the target supports subnormal values, this is smaller than leastNormalMagnitude; otherwise they are equal.")
  
                } label: {
                    Text("Toast Long Text")
                }
                
                Button {
                    toast.position = .top
                    toast.showCustom()
  
                } label: {
                    Text("Toast CustomView")
                }

            } header: {
                Text("Toast top")
            }
 
            Section {
                Button {
                    toast.position = .bottom
                    toast.showText("Toast at bottom")
  
                } label: {
                    Text("Toast at bottom")
                }
 
                Button {
                    toast.position = .bottom
                    toast.showText("Compares less than or equal to all positive numbers, but greater than zero. If the target supports subnormal values, this is smaller than leastNormalMagnitude; otherwise they are equal.")
  
                } label: {
                    Text("Toast Long Text")
                }
                
                Button {
                    toast.position = .bottom
                    toast.showCustom()
  
                } label: {
                    Text("Toast CustomView")
                }

            } header: {
                Text("Toast bottom")
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

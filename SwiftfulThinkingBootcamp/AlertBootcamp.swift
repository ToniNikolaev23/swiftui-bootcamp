//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                .foregroundColor(.red)
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 😎"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
            
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("Success"), message: Text("Success description"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error"))
        default:
                return Alert(title: Text("Default Error"))
        }
//        return Alert(
//            title: Text("ERROR"),
//            message: Text("This is description"),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("Okey")))
    }
}

#Preview {
    AlertBootcamp()
}

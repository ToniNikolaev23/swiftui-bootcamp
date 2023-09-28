//
//  ActionSheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct ActionSheetsBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    let testColor: UIColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack{
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.red)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                })
                .tint(.primary)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //add code
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //code
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton,deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancelButton])
        }
        
//        return ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is message"),
//            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionSheetsBootcamp()
}

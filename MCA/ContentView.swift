//
//  ContentView.swift
//  MCA
//
//  Created by Mackenzie Bryant on 4/10/20.
//  Copyright © 2020 Mackenzie Bryant. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["Contact", "Directory", "Events"],
        ["Labor", "Messages", "News"],
        ["Convention", "Sponsors", "MCA"],
    ]
    
    var body: some View {
        
        ZStack (alignment: .center) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 15))
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(60)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Animation Code
//
//  Created by Shatika Damphie on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isdone : Bool = false
    
    var body: some View {
        
        VStack {
            
            Button(action:{
                withAnimation {
                    isdone.toggle()
                }
                },label:{
                Image(systemName:"bag").resizable().frame(width: 80, height: 80, alignment: .center)
                    .rotationEffect(isdone ? .degrees(50) : .degrees(0))

                   
            })
               
        }
    }
    
    func animation(){
        self.isdone.toggle()
    }
}
    
    
    
    
    
    
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
    

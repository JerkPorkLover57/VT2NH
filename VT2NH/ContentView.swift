//
//  ContentView.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        ZStack {
            Color("AccentColor")
                .ignoresSafeArea()
            VStack {
                Image("LOGO")
                    .resizable()
                    .cornerRadius(30)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                Text("From Green Mountain to White Pines")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.all)
                Text("Your adventure awaits !!")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
            
        }
        
        

        
        }
        
    }
}


    struct ContentView_Previews:
        PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

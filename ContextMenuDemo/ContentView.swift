//
//  ContentView.swift
//  ContextMenuDemo
//
//  Created by apple on 15/1/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var fourgroundColor: Color = Color.white;
    @State private var backgroundColor: Color = Color.black;
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .foregroundColor(fourgroundColor)
            .background(backgroundColor)
            .contextMenu{
                Button(action:{
                    self.fourgroundColor = Color.white;
                    self.backgroundColor = Color.black;
                }){
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                Button(action: {
                    self.fourgroundColor = Color.black;
                    self.backgroundColor = Color.white;
                }){
                    Text("Inverted Colors")
                    Image(systemName: "paintbrush.fill")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

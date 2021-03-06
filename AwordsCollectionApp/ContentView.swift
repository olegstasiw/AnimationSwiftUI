//
//  ContentView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showShape = false
   
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.showShape.toggle()
                }
            }) {
                HStack {
                    if showShape {
                        Text("Hide Shape")
                            .transition(.buttonLabelTransition)
                    } else {
                        Text("Show Shape")
                            .transition(.buttonLabelTransition)
                    }
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showShape ? 2 : 1)
                        .rotationEffect(.degrees(showShape ? 0 : -180))
                }
            }
            
            Spacer()
            
            if showShape {
                MyFigure(size: 100)                    .frame(width: 350, height: 350)
                    .transition(.transition)
            }

            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

extension AnyTransition {
    static var buttonLabelTransition: AnyTransition {
        let insertion = AnyTransition.scale(scale: 1)
        let removal = AnyTransition.scale(scale: 1)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

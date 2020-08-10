//
//  MyFigure.swift
//  AwordsCollectionApp
//
//  Created by mac on 10.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct MyFigure: View {
    @State private var showAnimation = false
     var size :CGFloat

    var body: some View {
        VStack {
            Spacer()

            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 1, y: 0), endPoint: UnitPoint(x: 0, y: 0)))
                    .frame(width: size, height: size)
                    .offset(x: showAnimation ? -size : 0,
                            y: showAnimation ? 0 : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x: 0.5, y: 0.5)))
                    .frame(width: size, height: size)
                    .cornerRadius(size / 2, corners: [.topLeft])
                    .offset(x: showAnimation ? -size : 0,
                            y: showAnimation ? -size : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 0, y: 0)))
                    .frame(width: size, height: size)
                    .offset(x: showAnimation ? 0 : 0,
                            y: showAnimation ? -size : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 0.5, y: 0.5)))
                    .frame(width: size, height: size)
                    .cornerRadius(size / 2, corners: [.topRight])
                    .offset(x: showAnimation ? size : 0,
                            y: showAnimation ? -size : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 1, y: 1)))
                    .frame(width: size, height: size)
                    .offset(x: showAnimation ? size : 0,
                            y: showAnimation ? 0 : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0.5, y: 0.5)))
                    .frame(width: size, height: size)
                    .cornerRadius(size / 2, corners: [.bottomRight])
                    .offset(x: showAnimation ? size : 0,
                            y: showAnimation ? size : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 1, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                    .frame(width: size, height: size)
                    .offset(x: showAnimation ? 0 : 0,
                            y: showAnimation ? size : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: UnitPoint(x: 1, y: 0), endPoint: UnitPoint(x: 0.5, y: 0.5)))
                    .frame(width: size, height: size)
                    .cornerRadius(size / 2, corners: [.bottomLeft])
                    .offset(x: showAnimation ? -size : 0,
                            y: showAnimation ? size : 0)
                    .animation(.easeOut(duration: 0.7))

                Rectangle()
                .fill(Color.blue)
                .frame(width: size, height: size)

                if showAnimation {
                Text("Hello")
                    .font(.title)
                    .foregroundColor(.white)
                    .transition(.transition)
                    .animation(.linear(duration: 0.7))

                }
            }

            Spacer()
            
            Button(action: { self.showAnimation.toggle() }) {
                Text("Goo!")
            }
        }
    }
}

struct MyFigure_Previews: PreviewProvider {
    static var previews: some View {
        MyFigure(size: 100)

    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

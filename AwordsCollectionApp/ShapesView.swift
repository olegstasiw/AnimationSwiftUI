//
//  ShapesView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {

                    GradientRectangles()
                    .frame(width: 250, height: 250)
                    
                    PathView()
                    .frame(width: 250, height: 250)
                    
                    CurvesView()
                    .frame(width: 250, height: 250)

                    MyFigure(size: 50)
                    .frame(width: 250, height: 250)
                }
            }.navigationBarTitle("Shapes")
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

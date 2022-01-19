//
//  ApplicationGradients.swift
//  SwiftUISideMenuDemoApp
//
//  Created by mehmet karanlık on 19.01.2022.
//

import Foundation
import SwiftUI
struct ApplicationGradients {
 static var get = ApplicationGradients()
  var redBlueGradient : some View  {
  LinearGradient(colors: [Color.blue,Color.purple], startPoint: .top, endPoint: .bottom)
    .ignoresSafeArea()
 }
}

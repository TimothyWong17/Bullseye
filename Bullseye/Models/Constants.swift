//
//  Constants.swift
//  Bullseye
//
//  Created by Timothy Wong on 6/8/22.
//

import Foundation
import UIKit
import SwiftUI

enum Constants{
    enum General {
        public static let strokeWidth = CGFloat(2.0)
        public static let roundedViewLength = CGFloat(56.0)
        public static let roundedRectViewWidth = CGFloat(68.0)
        public static let roundedRectViewHeight = CGFloat(56.0)
        public static let roundedRectCornerRadius = CGFloat(21.0)
        
    }
    
    enum Leaderboard {
        public static let leaderboardScoreColWidth = CGFloat(50.0)
        public static let leaderboardDateColWidth = CGFloat(170.0)
        public static let leaderboardMaxRowWidth = CGFloat(480.0)
    }
}


struct Constants_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

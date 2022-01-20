//
//  SideMenuViewModel.swift
//  SwiftUISideMenuDemoApp
//
//  Created by mehmet karanlık on 19.01.2022.
//

import Foundation


class SideMenuViewModel : ObservableObject {

lazy var avatarUrl = "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"


}



enum SideMenuEnum : Int, CaseIterable {
 case profile
 case lists
 case bookmarks
 case messages
 case notifications
 case logout

 var title : String {
  switch self {
   case .profile : return "Profile"
   case .lists : return "Lists"
   case .bookmarks : return "Bookmarks"
   case .messages : return "Messages"
   case .notifications : return "Notifications"
   case .logout : return "Logout"

  }
 }

 var imageName : String {
  switch self {
   case .profile : return "person"
   case .lists : return "list.bullet"
   case .bookmarks : return "bookmark"
   case .messages : return "bubble.left"
   case .notifications : return "bell"
   case .logout : return "arrow.left.square"

  }
 }
}

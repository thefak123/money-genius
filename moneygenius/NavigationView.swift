//
//  NavigationView.swift
//  moneygenius
//
//  Created by MacBook Pro on 05/05/23.
//

import SwiftUI



struct NavigationView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case profile, home, statistic

        var title: String {
            switch self {
            case .home:
                return "Home"
            case .statistic:
                return "Statistic"
            case .profile:
                return "Profile"
            }
        }

        var image: String {
            switch self {
            case .home:
                return "star"
            case .statistic:
                return "star"
            case .profile:
                return "list.bullet"
            }
        }
    }
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label(Tab.home.title, systemImage: Tab.home.image)
                       
                        
                }
                .tag(Tab.home)
            StatisticView()
                .tabItem {
                    Label(Tab.statistic.title, systemImage: Tab.statistic.image)
                        
                        
                }
                .tag(Tab.statistic)
            ProfileView()
                .tabItem {
                    Label(Tab.profile.title, systemImage: Tab.profile.image)
                        
                      
                }
                .tag(Tab.profile)
        }
        .accentColor(.yellow)
        
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}

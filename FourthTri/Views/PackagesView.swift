//
//  PackagesView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

struct PackagesView: View {
  
  @State private var selectedTab: PackageTab = .MomAndBaby
  
  enum PackageTab {
    case MomAndBaby
    case MomOnly
    case AddOn
  }
  
  var body: some View {
    
    NavigationStack {
      
      VStack {
        
        MainHeaderView()
        
        Text("Explore our Packages")
          .font(.system(size: 24))
          .fontWeight(.medium)
        
        PromotionalImageView(
          imageName: "PackagesPromo",
          imagePromo: "Join today for 20% off your first purchase",
          actionButton: true)
        
        HStack(spacing: 35) {
          
          PackagesTabStyle(
            tabPicture: "PackageTab1",
            tabTitle: "Mom+Baby",
            tab: .MomAndBaby,
            selectedTab: $selectedTab)
          
          PackagesTabStyle(
            tabPicture: "PackageTab2",
            tabTitle: "Just Mom",
            tab: .MomOnly,
            selectedTab: $selectedTab)
          
          PackagesTabStyle(
            tabPicture: "PackageTab3",
            tabTitle: "Add On's",
            tab: .AddOn,
            selectedTab: $selectedTab)
          
        }
        .padding(.all , 10)
        
        contentViewForSelectedTab()
        
      }
    }
  }
  
  @ViewBuilder func contentViewForSelectedTab() -> some View {
    
    switch selectedTab {
      
    case .MomAndBaby:
      MomAndBabyView()
      
    case .MomOnly:
      JustMomView()
      
    case .AddOn:
      AddOnView()
      
    }
  }
}

struct PackagesTabStyle : View {
  
  var tabPicture : String
  var tabTitle : String
  let tab: PackagesView.PackageTab
  
  @Binding var selectedTab: PackagesView.PackageTab
  
  var body : some View {
    
    Button {
      
      selectedTab = tab
      
    } label: {
      
      VStack{
        
        Image(tabPicture)
          .clipShape(Circle())
          .frame(width: 75,height: 75)
        
        Text(tabTitle)
          .foregroundStyle(Color.black)
          .font(.system(size: 13))
          .fontWeight(.medium)
        
      }
    }
  }
}

// below are the views for the tabbar i made all pretty much the same

struct MomAndBabyView : View{
  
  var body : some View {
    
    ScrollView(.vertical) {
      
      HStack {
        Text("Mom & Baby Packages")
          .padding(.leading)
          .padding(.top)
          .font(.system(size: 21))
          .fontWeight(.medium)
        
        Spacer()
        
      }
      
      HStack {
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
      }
      
      HStack {
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
      }
    }
    
  }
}

struct JustMomView : View{
  
  var body : some View {
    
    ScrollView(.vertical) {
      
      HStack {
        
        Text("Mom Only Packages")
          .padding(.leading)
          .padding(.top)
          .font(.system(size: 21))
          .fontWeight(.medium)
        
        Spacer()
        
      }
      
      HStack {
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
      }
      
      HStack {
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
      }
    }
    
  }
}

struct AddOnView : View {
  
  var body : some View {
    
    ScrollView(.vertical) {
      
      HStack {
        
        Text("Add On's")
          .padding(.leading)
          .padding(.top)
          .font(.system(size: 21))
          .fontWeight(.medium)
        
        Spacer()
        
      }
      
      HStack {
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
      }
      
      HStack {
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
        
        GridElementView(
          elementName: "Package",
          elementDescription: 
            "description description description description description description description description"
        )
      }
    }
    
  }
}

#Preview {
  PackagesView()
}


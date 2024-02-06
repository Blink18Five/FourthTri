//
//  EventView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

struct EventsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FeaturedEventsView: View {
    var body: some View {
        FeaturedScrollView(
            element: "Events",
            elementName: "Event Name",
            elementDescription:  "description description description\ndescription description description\ndescription description ..."
        ) {
            EventsView()
        }
    }
}

#Preview {
    FeaturedEventsView()
}

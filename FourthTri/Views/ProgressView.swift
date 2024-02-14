//
//  ProgressView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI


struct ProgressView: View {
    var body: some View {
        //        let gridData: [String] = ["1", "2", "3", "4", "5",
        //                                  "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]
        let gridData: [String: String] = ["a_together": "Together",
                                          "a_health": "health",
                                          "a_heart": "heart",
                                          "a_cardio":"cardio",
                                          "a_fitness":"fitness",
                                          "a_savior": "Savior",
                                          "a_peace":"peace",
                                          "a_group":"group",
                                          "a_picnic": "picnic",
                                         "a_connect":"Connect",
                                          "a_book":"book",
                                          "a_sleep": "sleep",
                                          "a_locked":"locked"]
        VStack {
            Text ( " Togethher")
        }
        
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
        
        return VStack {
            let columns = [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
            ]
            
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(gridData.sorted(by: >), id: \.key) { key,value in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 100)
                            .overlay (
                                
                                VStack{
                                    Image("\(key)")
                                    Text(value)
                                }
                                
                                //                                Text(gridData[index])
                                //                                    .foregroundColor(.white)
                            )
                        
                    }
                }
                .padding()
            }
            .navigationTitle("Grid View")
        }
    }
    
    struct GridCellView: View {
        let item: String
        
        var body: some View {
            Text(item)
                .foregroundColor(.white) // Customize cell text color
                .font(.headline) // Customize cell text font
                .padding() // Add padding to cell content
        }
    }
    struct ProgressView_Previews: PreviewProvider {
        static var previews: some View {
            ProgressView()
        }
    }
    
}

#Preview {
    ProgressView()
}

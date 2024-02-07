//
//  ConsoleMenu.swift
//  NESTrackerVision
//
//  Created by Alexis Jost on 04.02.2024.
//

import SwiftUI

struct ConsoleMenu: View {
    
    @State var cons: [ConsoleDetails]
    
    var body: some View {
        NavigationStack{
                    List(cons, id: \.id) { item in
                        NavigationLink(destination: ConsoleDetailView(item: item), label: {
                            HStack{
                                Image(item.imgName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height:60)
                                VStack(alignment: .leading){
                                    Text(item.consoleName)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 17))
                                }
                                if item.favorites {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                }
                                
                                
                            }
                        })
                    }.navigationTitle(cons.first?.category ?? "")
                }
    }
}

#Preview {
    ConsoleMenu(cons: ConsoleList.consoles)
}

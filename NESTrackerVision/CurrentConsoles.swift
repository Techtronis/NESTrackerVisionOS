//
//  CurrentConsoles.swift
//  NESTrackerVision
//
//  Created by Alexis Jost on 04.02.2024.
//

import SwiftUI

struct CurrentConsoles: View {
    
    var cons: [ConsoleDetails]
    
    var body: some View {
        NavigationStack{
                    List(cons, id: \.id) { item in
                        if(!item.discontinued){
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
                                        Text("\(item.ReleaseDate)")
                                            .font(.system(size:15))
                                            .foregroundStyle(.gray)
                                    }
                                    
                                    if item.favorites {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                    }
                                }
                            })
                        }
                    }
                }.navigationTitle("Current Consoles")
    }
}

#Preview {
    CurrentConsoles(cons: ConsoleList.consoles)
}

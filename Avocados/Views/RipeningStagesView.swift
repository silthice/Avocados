//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    //MARK: - BODY
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    } //: End of ForEach
                }) //: End of HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            } //: End of VStack
        } //: End of ScrollView
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}

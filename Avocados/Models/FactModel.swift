//
//  FactModel.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

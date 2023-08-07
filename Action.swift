//
//  Action.swift
//  BlackDVA
//
//  Created by Cameron Allen on 8/4/23.
//

import Foundation

struct Action: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let handler: () -> Void
}

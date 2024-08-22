//
//  Days.swift
//  app-01
//
//  Created by David Cantú Delgado on 19/08/24.
//

import SwiftUI

enum Days: String, CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    

    var name: String {
        switch self {
        case .monday:
            return "Lunes"
        case .tuesday:
            return "Martes"
        case .wednesday:
            return "Miércoles"
        case .thursday:
            return "Jueves"
        case .friday:
            return "Viernes"
        }
    }

    var shortName: String {
        switch self {
        case .monday:
            return "Lun"
        case .tuesday:
            return "Mar"
        case .wednesday:
            return "Mié"
        case .thursday:
            return "Jue"
        case .friday:
            return "Vie"
        }
    }

    var number: Int {
        switch self {
        case .monday:
            return 1
        case .tuesday:
            return 2
        case .wednesday:
            return 3
        case .thursday:
            return 4
        case .friday:
            return 5
        }
    }
    
}

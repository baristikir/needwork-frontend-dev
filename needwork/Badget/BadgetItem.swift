//
//  BadgetItem.swift
//  needwork
//
//  Created by Baris Tikir on 09.08.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

public struct BadgetItem {
    public let icon: Image
    public let title: String
    
    public init(icon: Image, title: String){
        self.icon = icon
        self.title = title
    }
    
    public init(icon: String, title: String){
        self = BadgetItem(icon: Image(systemName: icon), title: title)
    }
    
}

//
//  Book.swift
//  dataDemo_iOs
//
//  Created by Ankita Jain on 2020-01-16.
//  Copyright © 2020 Ankita Jain. All rights reserved.
//

import Foundation

class Book
{
    internal init(title: String, author: String, pages: Int, year: Int) {
        self.title = title
        self.author = author
        self.pages = pages
        self.year = year
    }
    
    var title : String
    var author : String
    var pages : Int
    var year : Int
    
    
}

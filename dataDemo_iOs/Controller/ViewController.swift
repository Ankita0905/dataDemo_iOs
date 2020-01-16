//
//  ViewController.swift
//  dataDemo_iOs
//
//  Created by Ankita Jain on 2020-01-16.
//  Copyright © 2020 Ankita Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var books: [Book]?
   
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadData()
    }
    
    func getFilePath() -> String
    {
        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        if documentPath.count > 0
        {
            let documentDirectory = documentPath[0]
            let filePath = documentDirectory.appending("/data.txt")
            return filePath
        }
        return ""
    }
    
    func loadData()
    {
        books=[Book]()
    }

    @IBAction func addBook(_ sender: UIBarButtonItem)
    {
        let title=textFields[0].text ?? ""
        let author=textFields[1].text ?? ""
        let pages=Int(textFields[2].text ?? "0") ?? 0
        let year=Int(textFields[3].text ?? "2020") ?? 2020
        
        let book = Book(title: title, author: author, pages: pages, year: year)
        books?.append(book)
        
        for textField in textFields
        {
            textField.text=""
            textField.resignFirstResponder()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let BookTable = segue.destination as? BookTableVC
        {
            BookTable.books = self.books
        }
    }
    
    func saveData()
    {
        
    }
    
}


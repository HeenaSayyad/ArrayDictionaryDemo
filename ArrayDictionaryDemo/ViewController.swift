//
//  ViewController.swift
//  ArrayDictionaryDemo
//
//  Created by ramjan sayyad on 30/08/18.
//  Copyright © 2018 ramjan sayyad. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrayList: Array<Any> = []

    var dictionary1: [String: String] = [
        "name" : "Heena",
        "Education" : "B.Tech",
        "Gender" : "female",
        "status" : "Married"
    ]
    var dictionary2: [String: String] = [
        "name" : "Ramjan",
        "Education" : "B.E",
        "Gender" : "Male",
        "status" : "Married"
    ]
    
    var dictionary3: [String: String] = [
        "name" : "Arshad",
        "Education" : "First Standard",
        "Gender" : "Male",
        "status" : "Single"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayList = [dictionary1, dictionary2, dictionary3]
        
        print(arrayList)


    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(arrayList.count)
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        
        let temp_dict = arrayList[indexPath.row] as! [String:String]
        cell.textLabel?.text = temp_dict["name"]!
        cell.detailTextLabel?.text = temp_dict["Gender"]
        
        return(cell)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
}


//override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
   // let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
    
    //let book = books[indexPath.row]
    
    //cell.textLabel?.text = book.bookTitle
    //cell.detailTextLabel?.text = book.bookAuthor
    
    //return cell
//}

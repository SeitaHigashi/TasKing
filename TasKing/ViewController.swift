//
//  ViewController.swift
//  TasKing
//
//  Created by 東誠太 on 2017/11/25.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import UIKit
/*
struct ContentsData{
    let contents :String!
    let contentsdate :String!
}
*/
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var contents = ["example1","example2"]
    var contentsdate = ["12/10","12/30"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ContentsTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        let contentsLabel = cell.viewWithTag(1) as! UILabel
        contentsLabel.text = contents[indexPath.row]
        let contentsDateLabel = cell.viewWithTag(2) as! UILabel
        contentsDateLabel.text = contentsdate[indexPath.row]
        return cell
    }
    
    
    //MARK: Properties
    @IBOutlet weak var ContentsTextField: UITextField!
    @IBOutlet weak var DateTextField: UITextField!
    @IBOutlet weak var ContentsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Action
    @IBAction func AddButton(_ sender: UIButton) {
        contents.insert(ContentsTextField.text!, at: contents.count)
        contentsdate.insert(DateTextField.text!, at: contentsdate.count)
        ContentsTableView.reloadData()
    }

}


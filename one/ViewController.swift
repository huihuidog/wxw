//
//  ViewController.swift
//  one
//
//  Created by aiait on 2019/1/2.
//  Copyright © 2019年 aiait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let image1 = UIImage (named: "bijiben")
    let image2 = UIImage (named: "jiandao")
    let image3 = UIImage (named: "jiazi")
    let image4 = UIImage (named: "gangbi")
    let image5 = UIImage (named: "dingshuji")
    let image6 = UIImage (named: "wenjianjia")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let table  = UITableView(frame:CGRect(x: 40, y: 40, width: 300, height: 400))
        let  table = UITableView(frame:self.view.bounds , style: .grouped)
        
        table.dataSource = self
        //table.delegate = self
        self.title = "UnserInfo"
        self.view.backgroundColor =  UIColor.groupTableViewBackground
        table.register(UITableViewCell.self, forCellReuseIdentifier: "UITableView")
        self.view.addSubview(table)
        
        
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "UITableView")
        if(indexPath.section == 0){
            if(indexPath.row == 0){
                cell?.textLabel?.text = "钱包"
                cell?.imageView?.image = image2
            }
        }
        
        
        if (indexPath.section == 1) {
            if (indexPath.row == 0) {
                cell?.textLabel?.text = "收藏"
                cell?.imageView?.image = image1
            }
            else if(indexPath.row == 1) {
                cell?.textLabel?.text = "相册"
                cell?.imageView?.image = image5
                
            }
            else if(indexPath.row == 2) {
                cell?.textLabel?.text = "卡包"
                cell?.imageView?.image = image4
            }
            else if(indexPath.row == 3) {
                cell?.textLabel?.text = "表情"
                cell?.imageView?.image = image6
            }
        }
        else if (indexPath.section == 2) {
            if (indexPath.row == 0) {
                cell?.textLabel?.text = "设置"
                cell?.imageView?.image = image3
            }
        }
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 1
        }
        else if(section == 1){
            return 4
        }
        else if(section == 2){
            return 1
        }
        return 1
    }
}

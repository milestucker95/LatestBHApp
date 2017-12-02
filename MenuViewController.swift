//
//  MenuViewController.swift
//  Black History
//
//  Created by Miles Tucker on 11/12/17.
//  Copyright © 2017 Miles Tucker. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var menu = ["Historical Figures", "Calendar", "Music", "Twitter Feed"]
    
    @IBOutlet weak var mainMenu: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menu.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainMenuCell", for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel!.text = menu[indexPath.row]
        // cell.backgroundView = UIImageView(image: UIImage(named: "coolblackbackground1"))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0
        {
        let HistoricalFigsVC = HistoricalFigureViewController()
        HistoricalFigsVC.customInit(menuIndex: indexPath.row, title: menu[indexPath.row])
        self.navigationController?.pushViewController(HistoricalFigsVC, animated: true)
        
        mainMenu.deselectRow(at: indexPath, animated: true)
        }
        
        else if indexPath.row == 2
        {
            [self .performSegue(withIdentifier:"musicSegue", sender: self)]

        }
        
//        else if indexPath.row == 2
//        {
////            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//////            let musicVC = MusicViewController()
////            let musicVC = storyBoard.instantiateViewController(withIdentifier: "MusicViewController") as! MusicViewController
////            //self.navigationController?.pushViewController(musicVC, animated: true)
////              self.navigationController?.pushViewController(musicVC, animated: true)
////            
////              mainMenu.deselectRow(at: indexPath, animated: true)
//            
//            let musicVC = MusicViewController()
////            musicVC.customInit(musicIndex: indexPath.row, title: menu[indexPath.row])
//            self.navigationController?.pushViewController(musicVC, animated: true)
////
//            mainMenu.deselectRow(at: indexPath, animated: true)
//
//        }
        
        

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

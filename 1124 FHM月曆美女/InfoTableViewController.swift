//
//  InfoTableViewController.swift
//  1124 FHM月曆美女
//
//  Created by 泳逸 李 on 2017/11/25.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var rewardLabel: UILabel!
    @IBOutlet weak var beautyImageView: UIImageView!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    var session = URLSession(configuration: .default)
    
    var conversationViewController:ConversationViewController?

    var nameFromView1:String?
    var ageFromView1:String?
    var starFromView1:String?
    var jobFromView1:String?
    var rewardFromView1:String?
    var personalInfoFromView1:String?
    var imageAddressFromView1:String?
    var titleFromView1:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let okName = nameFromView1{
            nameLabel.text = okName
        }
        if let okAge = ageFromView1{
            ageLabel.text = okAge
        }
        if let okStar = starFromView1{
            starLabel.text = okStar
        }
        if let okJob = jobFromView1{
            jobLabel.text = okJob
        }
        if let okReward = rewardFromView1{
            rewardLabel.text = okReward
            }
        if let okImageAddress = imageAddressFromView1{
            downlaodImage(webAddress: okImageAddress)
        }
        if let okTitle = titleFromView1{
        navigationTitle.title = okTitle
        }
    }
    
    func downlaodImage(webAddress:String){
        if let imageURL = URL(string: webAddress){
        let task = session.downloadTask(with: imageURL, completionHandler: {
            (url, response, error) in
            if error != nil{
                DispatchQueue.main.async {
        self.popWithAlert(title: "有東西出錯了", message: error!.localizedDescription)
                }
                return
                }
            if let okURL = url{
                do{
                    let okData = try Data(contentsOf: okURL)
                    if let okImage = UIImage(data: okData){
                    DispatchQueue.main.async {
                        self.beautyImageView.image = okImage
                    }
                }
            }catch{
        self.popWithAlert(title: "抱歉", message: error.localizedDescription)
                    }
                }
            })
            task.resume()
        }
    }
    
    func popWithAlert(title:String, message:String){
        let myAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(myAlert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "knowledgeSegue"{
            if let conversationViewController = segue.destination as? ConversationViewController{
                if let okPersonalInfo = personalInfoFromView1{
                    conversationViewController.infoAddressFromView2 = okPersonalInfo
                }
            }
        }
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        myIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        myIndicator.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

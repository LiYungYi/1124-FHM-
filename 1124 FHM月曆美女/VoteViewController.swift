//
//  VoteViewController.swift
//  1124 FHM月曆美女
//
//  Created by 泳逸 李 on 2017/11/26.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class VoteViewController: UIViewController {
    
    var beautyNameArray = ["1月號 張榕容","2月號 張景嵐","3月號 高宇蓁","4月號 劉雨柔","5月號 林可彤","6月號 莫允雯","7月號 陳語安","8月號 陳瑀希","9月號 Popu Lady","10月號 邵雨薇","11月號 張宇","12月號 夏如芝"]
    
    @IBAction func voteButton(_ sender: UIButton) {
        let myalert = UIAlertController(title: "1-12月封面美女", message: "請選擇您最喜愛的那位", preferredStyle: .actionSheet)
        
        for i in 0..<beautyNameArray.count{
            let listAlert = UIAlertAction(title: beautyNameArray[i], style: .default) {(action:UIAlertAction) in
                self.dismiss(animated: true, completion: nil)
                self.thankYouAlert()
        
            }
            myalert.addAction(listAlert)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
            myalert.addAction(cancelAction)
        
        present(myalert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let remindAlert = UIAlertController(title: "請投給您最喜歡的封面美女", message: "請按下Vote選擇", preferredStyle: .alert)
        remindAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(remindAlert, animated: true, completion: nil)
    }
    
    func thankYouAlert(){
        let thankYouAlert = UIAlertController(title: "投票完成", message: "感謝您的支持", preferredStyle: .alert)
        thankYouAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(thankYouAlert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
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

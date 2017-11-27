//
//  MonthTableViewController.swift
//  1124 FHM月曆美女
//
//  Created by 泳逸 李 on 2017/11/24.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class MonthTableViewController: UITableViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    
    var monthGirlArray = [monthGirl]()
    
    var nameArray = [nameList]()
    
    var infoViewController:InfoTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name1 = nameList(name: "張榕容")
        let name2 = nameList(name: "張景嵐")
        let name3 = nameList(name: "高宇蓁")
        let name4 = nameList(name: "劉雨柔")
        let name5 = nameList(name: "林可彤")
        let name6 = nameList(name: "莫允雯")
        let name7 = nameList(name: "陳語安")
        let name8 = nameList(name: "陳瑀希")
        let name9 = nameList(name: "Popu Lady")
        let name10 = nameList(name: "邵雨薇")
        let name11 = nameList(name: "張宇")
        let name12 = nameList(name: "夏如芝")
    
        let januaryInfo = monthGirl(name: "1月號 張榕容", age: "28", constellations: "牡羊座", occupation: "演員", reward: "《渺渺》入圍「第45屆金馬獎」最佳女主角。《陽陽》榮獲亞太影展影后、「第11屆台北電影節」最佳女主角獎，並入圍「第46屆金馬獎」最佳女主角。《逆光飛翔》榮獲「第14屆台北電影節」最佳女主角獎，並入圍「第49屆金馬獎」最佳女主角。", morePersonalInfo: "http://www.fhm.com.tw/article?id=20038", imageAddress: "https://upload.wikimedia.org/wikipedia/commons/4/46/ANN_HSU.jpg")
        
        let februaryInfo = monthGirl(name: "2月號 張景嵐", age: "27", constellations: "處女座", occupation: "模特兒、演員", reward: "手排駕照、國際咖啡吧台技師證、油畫", morePersonalInfo: "http://www.fhm.com.tw/article?id=20262", imageAddress: "https://cdn0-techbang.pixfs.net/system/images/169619/original/3ea90ba4605d8275cfed6d44b2629dde.jpg?1405072369")
        
        let marchInfo = monthGirl(name: "3月號 高宇蓁", age: "38", constellations: "射手座", occupation: "演員", reward: "電影《Open Open》、日劇《唯一的一場雪》、《娘家》、《天下女人心》、《世間情》、《親愛的我愛上別人》、《愛情急整室》等", morePersonalInfo: "http://www.fhm.com.tw/article?id=20475", imageAddress: "http://pic.ctitv.com/wpimg/2015/06/dd7.jpg")
        
        let aprilInfo = monthGirl(name: "4月號 劉雨柔", age: "30", constellations: "雙子座", occupation: "模特兒、演員、主持", reward: "書籍《健女人來了》，電視劇《PM AM》、《幸福的抉擇》等。", morePersonalInfo: "http://www.fhm.com.tw/article?id=20668", imageAddress: "http://img1.gtimg.com/ent/pics/hv1/193/30/1704/110810443.jpg")
        
        let mayInfo = monthGirl(name: "5月號 林可彤", age: "36", constellations: "水瓶座", occupation: "演員、模特兒", reward: "我不是天生瘦》、《最後一名的勇敢》、《我不是天生瘦2》等書", morePersonalInfo: "http://www.fhm.com.tw/article?id=20863", imageAddress: "http://img-cdn.filefactory.com/embed/xl/3blx906kei0l.jpg")
        
        let juneInfo = monthGirl(name: "6月號 莫允雯", age: "29", constellations: "金牛座", occupation: "演員", reward: "電視劇《真愛黑白配》、《妹妹》、《戀愛零距離》等，電影《大顯神威》、《五星級魚干女》", morePersonalInfo: "http://www.fhm.com.tw/article?id=21058", imageAddress: "http://www.ettoday.net/events/goddess/img/alady_2_89.jpg")
        
        let julyInfo = monthGirl(name: "7月號 陳語安", age: "24", constellations: "獅子座", occupation: "演員", reward: "課間好時光》、《聽見幸福》、《愛上哥們》、《狼王子》、《我喜歡你，你知道嗎？》、《逆光》", morePersonalInfo: "http://www.fhm.com.tw/article?id=21219", imageAddress: "https://pic.pimg.tw/perfumeforshe520/1467277877-648685060_n.jpg")
        
        let augustInfo = monthGirl(name: "8月號 陳瑀希", age: "27", constellations: "天枰座", occupation: "模特兒、藝人、主持", reward: "寫真書《In Love!戀愛吧！要幸福喔。》、《陳瑀希～小茉莉的美麗視界》、《陳瑀希x小茉莉 夢幻世界》，電影《風雲高手》，主持《冠軍任務》等", morePersonalInfo: "http://www.fhm.com.tw/article?id=21378", imageAddress: "http://img.chinatimes.com/newsphoto/2015-06-15/656/20150615003873.jpg")
        
        let septemberInfo = monthGirl(name: "9月號 Popu Lady", age: "平均27歲", constellations: "洪詩:摩羯座、大元:天蠍座、寶兒:摩羯座、庭萱:雙魚座、宇珊:雙子座", occupation: "演員、主持", reward: "《稍息立正我愛你》《麥呆的劈腿日記》", morePersonalInfo: "http://www.fhm.com.tw/article?id=21728", imageAddress: "https://lastfm-img2.akamaized.net/i/u/ar0/e5f149e25f130a2840558813ceaccae6.jpg")
        
        let octoberInfo = monthGirl(name: "10月號 邵雨薇", age: "28", constellations: "處女座", occupation: "演員", reward: "電影《樓下的房客》，電視劇《1989一念間》、《鑑識英雄II－正義之戰》、《他看她的第二眼》、《美麗的祕密》⋯等", morePersonalInfo: "http://www.fhm.com.tw/article?id=21923", imageAddress: "https://img.mvmv.com.tw/actor_avatar/ic_148238028560148.jpg.thumb.464")
        
        let novemberInfo = monthGirl(name: "11月號 張宇", age: "31", constellations: "摩羯座", occupation: "知名主播與媒體人", reward: "曾為台視1800全球現場主播，綜藝節目主持人，YAHOO十大部落客，連三年網路票選最正主播，曾獲2015文創產業報導獎。現為自媒體工作者，筆耕者，自媒體網站為愚婦日報", morePersonalInfo: "http://www.fhm.com.tw/article?id=22077", imageAddress: "https://lh6.googleusercontent.com/NJsKuxpoV2K9wQ9tothur6YpUK7zB18bf2XNIsUsObC8hZC-RdMSiGfveYjdnSKuNv3LTPYqSAlNZwh2HPbS4SvfIde3CwU5eXFtjFcv50Jj4fCzGV1LPyWLWGZafLTnM6KNtJAv")
        
        let decemberInfo = monthGirl(name: "12月號 夏如芝", age: "35", constellations: "天蠍座", occupation: "電影、作曲", reward: "《紡綞蟲的記憶》、《清風無痕》", morePersonalInfo: "http://www.fhm.com.tw/article?id=22286", imageAddress: "https://attach.setn.com/newsimages/2016/08/04/608315-XXL.jpg")
        
        
        monthGirlArray.append(januaryInfo)
        monthGirlArray.append(februaryInfo)
        monthGirlArray.append(marchInfo)
        monthGirlArray.append(aprilInfo)
        monthGirlArray.append(mayInfo)
        monthGirlArray.append(juneInfo)
        monthGirlArray.append(julyInfo)
        monthGirlArray.append(augustInfo)
        monthGirlArray.append(septemberInfo)
        monthGirlArray.append(octoberInfo)
        monthGirlArray.append(novemberInfo)
        monthGirlArray.append(decemberInfo)
        
        nameArray.append(name1)
        nameArray.append(name2)
        nameArray.append(name3)
        nameArray.append(name4)
        nameArray.append(name5)
        nameArray.append(name6)
        nameArray.append(name7)
        nameArray.append(name8)
        nameArray.append(name9)
        nameArray.append(name10)
        nameArray.append(name11)
        nameArray.append(name12)
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
        return monthGirlArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = monthGirlArray[indexPath.row].name
        if indexPath.row == 0{
        cell.imageView?.image = UIImage(named: "1")
        }else if indexPath.row == 1{
        cell.imageView?.image = UIImage(named: "2")
        }else if indexPath.row == 2{
        cell.imageView?.image = UIImage(named: "3")
        }else if indexPath.row == 3{
        cell.imageView?.image = UIImage(named: "4")
        }else if indexPath.row == 4{
        cell.imageView?.image = UIImage(named: "5")
        }else if indexPath.row == 5{
        cell.imageView?.image = UIImage(named: "6")
        }else if indexPath.row == 6{
        cell.imageView?.image = UIImage(named: "7")
        }else if indexPath.row == 7{
        cell.imageView?.image = UIImage(named: "8")
        }else if indexPath.row == 8{
        cell.imageView?.image = UIImage(named: "9")
        }else if indexPath.row == 9{
        cell.imageView?.image = UIImage(named: "10")
        }else if indexPath.row == 10{
        cell.imageView?.image = UIImage(named: "11")
        }else if indexPath.row == 11{
        cell.imageView?.image = UIImage(named: "12")
        }
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moreInfo"{
            if let infoTableViewController =  segue.destination as? InfoTableViewController{
                if let selectedRow = tableView.indexPathForSelectedRow?.row{
    infoTableViewController.nameFromView1 = nameArray[selectedRow].name
    infoTableViewController.ageFromView1 = monthGirlArray[selectedRow].age
    infoTableViewController.starFromView1 = monthGirlArray[selectedRow].constellations
    infoTableViewController.jobFromView1 = monthGirlArray[selectedRow].occupation
    infoTableViewController.rewardFromView1 = monthGirlArray[selectedRow].reward
    infoTableViewController.imageAddressFromView1 = monthGirlArray[selectedRow].imageAddress
    infoTableViewController.personalInfoFromView1 = monthGirlArray[selectedRow].morePersonalInfo
    infoTableViewController.titleFromView1 = monthGirlArray[selectedRow].name
                }
            }
        }
    }
    
    
    
    

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

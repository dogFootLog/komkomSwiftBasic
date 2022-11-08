//
//  ListViewController.swift
//  MyMovieChart
//
//  Created by 강수희 on 2022/11/07.
//

import UIKit

class ListViewController: UITableViewController {
    
    var dataset = [
        ("다크나이트", "영웅물에 철학에 음악까지 더해져 예술이 되다", "2022-09-04", 8.95),
        ("호우시절", "때를 알고 내리는 좋은 비", "2022-10-08", 7.31),
        ("말할 수 없는 비밀", "여기서 너까지 다섯 걸음", "2022-05-07", 9.19)
    ]
    
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()
        for (title, desc, opendate, rating) in self.dataset {
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            
            datalist.append(mvo)
        }
        return datalist
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        
        // let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        
        // cell MovieCell 클래스 커스텀 버전
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! MovieCell
        
        /* cell Basic 버전
        cell.textLabel?.text = row.title
        cell.detailTextLabel?.text = row.description
        */
        
        /* cell Custom 버전
        let title = cell.viewWithTag(101) as? UILabel
        let desc = cell.viewWithTag(102) as? UILabel
        let opendate = cell.viewWithTag(103) as? UILabel
        let rating = cell.viewWithTag(104) as? UILabel
        
        title?.text = row.title
        desc?.text = row.description
        opendate?.text = row.opendate
        rating?.text = "\(row.rating!)"
         */
        
        // cell MovieCell 클래스 커스텀 버전
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.opendate?.text = row.opendate
        cell.rating?.text = "\(row.rating!)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다.")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

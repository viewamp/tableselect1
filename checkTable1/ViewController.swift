//
//  ViewController.swift
//  checkTable1
//
//

    import UIKit
    class MotoViewController : UITableViewController {
        
        var tableText = Array(repeating: "", count: 20)
        var productList : [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
        var searchList : [String] = ["sony speakers", "samsung speakers", "dolby speakers", "lg speakers", "hitachi speakers", "panasonic speakers", "bose speakers", "sanyo speakers", "yamaha speakers", "pioneer speakers", "jbl speakers", "klipsch"]
        
        var currentRow : Int = 0
        let textCellIndentifier = "itemCell"
        

        @IBOutlet var MotoTableView: UITableView!
     
        override func viewDidLoad() {
      }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return productList.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: textCellIndentifier, for: indexPath as IndexPath)
            cell.textLabel?.text = productList[indexPath.row]
            return cell
        }
        
        func tableView(_ tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
                currentRow = indexPath.row
                print("Text when selected.")
                print(currentRow)
        }
}


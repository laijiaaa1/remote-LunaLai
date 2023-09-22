/*:
 # 2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
 
    ## Answer:
    1. ✅numberOfSections(in tableView: UITableView) -> Int
        返回指定tableView中section的數量
        ✏️：
            func numberOfSections(in tableView: UITableView) -> Int {
                 //返回section的數量，此處為1個session
                 return 1
            }
 
    2. ✅tableView(_:numberOfRowsInSection:) -> Int
        返回指定每個section中row的數量
        ✏️：
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                     //返回每個section中row的數量，此處將計算出session中需要的行數
                     return data.count
            }
    3. ✅tableView(_:cellForRowAt:) -> UITableViewCell
        返回每個row的cell
        影響可見的內容
        ✏️：
             func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                    //創建可重用的cell
                 let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")!
                    //設置cell的內容
                 cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
                 return cell
             }
     
    4. tableView(_:titleForHeaderInSection:) -> String?
        返回每個section的標題，利用session做為參數
        ✏️：
             func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
                 if section == 0 {
                     return "Section 1"
                 } else if section == 1 {
                     return "Section 2"
                 }
                 return nil
             }
             
    5. tableView(_:titleForFooterInSection:) -> String?
        返回每個section的頁尾標題，利用session做為參數
        ✏️：
             func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
                 if section == 0 {
                     return "Footer 1"
                 } else if section == 1 {
                     return "Footer 2"
                 }
                 return nil
             }
 
    6. tableView(_:canEditRowAt:) -> Bool
        返回每個row是否可以編輯
---
    7. tableView(_:canMoveRowAt:) -> Bool
        返回每個row是否可以移動（重新排序）
 
    8. tableView(_:sectionForSectionIndexTitle:at:) -> Int
        返回特定標題和session 的索引，可用於創建索引清單，讓使用者快速跳到特定section
        ✏️：
             func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
                 if let sectionIndex = sectionTitles.firstIndex(of: title) {
                     return sectionIndex
                 }
             }

    9. tableView(_:commit:forRowAt:) -> UITableViewCellEditingStyle
        指定行的插入.insert或刪除.delete
        ✏️：
             func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
                 if editingStyle == .insert {
                     data.insert("new", at: indexPath.row)
                     //更新
                     tableView.insertRows(at: [indexPath], with: .automatic)
                 }
             }

    10. tableView(_:moveRowAt:to:) -> UITableViewCellEditingStyle
        返回每個row的移動狀態，將特定位置的行移動到另一個位置
        ✏️:
             func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
                     let movedItem = Items[sourceIndexPath.row]
                     Items.remove(at: sourceIndexPath.row)
                     Items.insert(movedItem, at: destinationIndexPath.row)
                 }
*/


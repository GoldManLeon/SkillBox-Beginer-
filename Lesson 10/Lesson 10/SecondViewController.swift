import UIKit
struct settings {
    var names: [String] = []
    var description = ""
}
class SET{
    static func seTTing() -> [settings]{
        return [
        settings(names: ["Авиарежим", "Wi-Fi", "Bluetooth", "Сотовая связь", "Режим модема"], description: " "),
        settings(names: ["Уведомления","Звуки", "Не беспокоить", "Экранное время"], description: " "),
        settings(names: ["Основные", "Пункт управления"], description: " ")
        ]
    }
}
class SecondViewController: UIViewController, UITableViewDelegate {

    var Settings = SET.seTTing()
    override func viewDidLoad(){
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
    }
    @IBOutlet weak var LabelSetting: UILabel!
    @IBOutlet weak var TableView: UITableView!
    let simpleTableIdentifier = "SimpleTableIdentifier"
    }
extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Settings[section].description
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return Settings.count
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Settings[section].names.count
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return tableView.deselectRow(at: indexPath, animated: true)
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier, for: indexPath)  as! TableViewCell
        let name = Settings[indexPath.section].names[indexPath.row]
        
        if indexPath.section == 0{
        if indexPath.row == 0{
            cell.accessoryView = UISwitch()
    }
}
        if indexPath.section == 0{
        if indexPath.row == 1{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 21))
        label.text = "Anvics Yota"
        cell.accessoryView = label
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 0{
        if indexPath.row == 2{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 21))
        label.text = "Вкл."
        cell.accessoryView = label
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 0{
        if indexPath.row == 3{
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 0{
        if indexPath.row == 4{
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 1{
        if indexPath.row == 0{
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 1{
        if indexPath.row == 1{
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 1{
        if indexPath.row == 2{
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 1{
        if indexPath.row == 3{
        cell.accessoryType = .disclosureIndicator
    }
}
        if indexPath.section == 2{
        if indexPath.row == 0{
        cell.accessoryType = .detailButton

    }
}
        if indexPath.section == 2{
        if indexPath.row == 1{
        cell.accessoryType = .disclosureIndicator
    }
}
        cell.textLabel?.text = name

        cell.imageView?.image = UIImage(named: name.description )
        return cell
      
    }
}







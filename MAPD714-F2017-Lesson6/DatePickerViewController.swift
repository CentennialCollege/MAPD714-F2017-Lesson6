import UIKit



class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
        
       
    }
    
    @IBAction func OnButtonPressed(_ sender: UIButton) {

        let date = datePicker.date
        
        datePicker.timeZone = NSTimeZone.init(abbreviation: "EDT")! as TimeZone
        
        let message = "The Date and Time you selected is \(date)"
        
        let alert = UIAlertController(
            title: "Date and Time Selected",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "That's So True!",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

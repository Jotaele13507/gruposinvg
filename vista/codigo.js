
class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Default placeholder text"
        }

        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { [weak alert] (_) in
            guard let textField = alert?.textFields?[0], let userText = textField.text else { return }
            print("User text: \(userText)")
        }))

        self.present(alert, animated: true, completion: nil)
    }
}

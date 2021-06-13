import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theHeadLabel: UILabel!
    @IBOutlet weak var theNumText: UITextField!
    @IBOutlet weak var thePrintLabel: UILabel!
    @IBOutlet weak var theCheckButn: UIButton!

    func prime( num : Int )-> Int {
        var primeNum : Bool? = true
        if num <= 0 {
            primeNum = nil
        } else if num == 1 {
            primeNum = false
        } else {
            for index in 2..<num {
                if num % index == 0 {
                    primeNum = false
                    break
                }
            }
        }
        if primeNum == true {
            return 1
        } else {
            return 0
        }
    }
    
    func rangePrime( keyNumber : Int ) -> String? {
        var primeNums : [Int] = []
        for i in 0...keyNumber {
        let a = prime(num: i)
            if a == 1 {
               primeNums.append(i)
            }
        }

        var b : String
        b = "\(primeNums)"
        return b
    }
     
    // MARK:-設定按鈕動作
    @IBAction func theCheckButn(_ sender: UIButton) {
        if let theNmText = theNumText.text, let theTextNum = Int(theNmText) {
        thePrintLabel.text = rangePrime(keyNumber: theTextNum)
        thePrintLabel.isHidden = false
        }
//                theNumText.text = ""
    }
    
    // MARK:-設定按鈕按空白處收回
    func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let re = rangePrime(keyNumber: 100)
        print("\(re!)")
        
        // 新增點選UITextField出現數字鍵盤
        theNumText.keyboardType = .numberPad
        // 新增點選空白收起數字鍵盤
        addTapGesture()

    }
}

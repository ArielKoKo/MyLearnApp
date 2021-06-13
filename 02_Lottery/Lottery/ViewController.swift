import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theButton: UIButton!
    @IBOutlet weak var theLotteryLabel: UILabel!
    
    @IBAction func theActionBtn(_ sender: UIButton) {
        theLotteryLabel.text = theLotteryNum()
    }
    
    var lottery : [ Int ] = []
    var lotteryNum : Int = 0
    
    func theLotteryNum () -> String {
        lottery = []
        脫離迴圈: while lottery.count<6 {
            lotteryNum = Int(arc4random() % 49) + 1
                for index in stride(from: lottery.count-1, through: 0, by: -1) {
                    if lottery[index] == lotteryNum {
                        print("重複號碼\(lotteryNum)")
                        print(lottery)
                        continue 脫離迴圈
                    }
                }
                lottery.append(lotteryNum)
                print(lottery)
        }
        lottery.sort()
        let printLottery : String = "\(lottery)"
        return printLottery
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print( theLotteryNum())
        
    }
}


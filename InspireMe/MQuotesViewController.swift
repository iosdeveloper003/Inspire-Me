//
//  MQuotesViewController.swift
//  InspireMe
//
//  Created by San MBP on 2/18/17.
//  Copyright © 2017 Sandeep Kumar. All rights reserved.
//

import UIKit

class MQuotesViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var authorImageView: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    var quotesManager = QuotesManager()
    
    @IBAction func inspireButtonTapped(_ sender: UIButton) {
        updateQuote()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateQuote()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateQuote() {
        let nextQuote = quotesManager.getNextQuote()
        quoteLabel.text = nextQuote.text
        authorImageView.image = UIImage(named: nextQuote.author.imageName)
        authorLabel.text = nextQuote.author.name
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

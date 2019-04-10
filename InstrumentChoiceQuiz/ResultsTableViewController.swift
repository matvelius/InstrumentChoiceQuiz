//
//  ResultsTableViewController.swift
//  InstrumentChoiceQuiz
//
//  Created by Matvey on 3/27/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    @IBOutlet var instrumentFamilyCorrelationLabel: UILabel!
    
    @IBOutlet var instrumentCorrelationLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var topInstrumentFamilyCorrelationScore = 0
        var topInstrumentFamilyCorrelation: InstrumentFamily = .woodwinds
        
        var topInstrumentCorrelationScore = 0
        var topInstrumentCorrelation: String = ""
        
        for instrumentFamilyCorrelation in instrumentFamilyCorrelations {
            if instrumentFamilyCorrelation.value > topInstrumentFamilyCorrelationScore {
//                print(instrumentFamilyCorrelation)
                topInstrumentFamilyCorrelation = instrumentFamilyCorrelation.key
                topInstrumentFamilyCorrelationScore = instrumentFamilyCorrelation.value
            }
        }
        
        for (instrument, score) in stringsCorrelations {
            if score > topInstrumentCorrelationScore {
                topInstrumentCorrelationScore = score
                topInstrumentCorrelation = instrument.description
            }
            print("current topInstrumentCorrelation = \(topInstrumentCorrelation)")
        }
        
        for (instrument, score) in woodwindsCorrelations {
            if score > topInstrumentCorrelationScore {
                topInstrumentCorrelationScore = score
                topInstrumentCorrelation = instrument.description
            }
            print("current topInstrumentCorrelation = \(topInstrumentCorrelation)")
        }
        
        for (instrument, score) in brassCorrelations {
            if score > topInstrumentCorrelationScore {
                topInstrumentCorrelationScore = score
                topInstrumentCorrelation = instrument.description
            }
            print("current topInstrumentCorrelation = \(topInstrumentCorrelation)")
        }
        
        for (instrument, score) in percussionCorrelations {
            if score > topInstrumentCorrelationScore {
                topInstrumentCorrelationScore = score
                topInstrumentCorrelation = instrument.description
            }
            print("current topInstrumentCorrelation = \(topInstrumentCorrelation)")
        }
        
        for (instrument, score) in keyboardsCorrelations {
            if score > topInstrumentCorrelationScore {
                topInstrumentCorrelationScore = score
                topInstrumentCorrelation = instrument.description
            }
            print("current topInstrumentCorrelation = \(topInstrumentCorrelation)")
        }
        
//        print(topInstrumentFamilyCorrelation)
        
        instrumentFamilyCorrelationLabel.text = topInstrumentFamilyCorrelation.description
        instrumentCorrelationLabel.text = topInstrumentCorrelation
        
        print("The top instrument family correlation is: \(topInstrumentFamilyCorrelation.description)")
        
        print("The top instrument correlation is: \(topInstrumentCorrelation)")
        
//        instrumentFamilyCorrelationLabel.text = "\(topInstrumentFamilyCorrelation)"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
//
//        let emoji = emojis[indexPath.section][indexPath.row]
//
//        //        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name)"
//        //
//        //        cell.detailTextLabel?.text = emoji.description
//
//        cell.update(with: emoji)
//
//        cell.showsReorderControl = true
//
//        return cell
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

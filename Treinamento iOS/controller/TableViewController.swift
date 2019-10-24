//
//  TableViewController.swift
//  Treinamento iOS
//
//  Created by Pedro Henrique de Moura on 21/10/19.
//  Copyright © 2019 Social Bank. All rights reserved.
//

import UIKit

class TransactionItem {
    //MAKE: Properties
    var id: Int
    var type: String
    var title: String
    var amount: Double
    var hour: String
    
    init(id: Int, type: String, title: String, amount: Double, hour: String){
        self.id     = id
        self.type   = type
        self.title  = title
        self.amount = amount
        self.hour   = hour
    }
}

class GroupTransaction {
    var date: String
    var transactions: [TransactionItem]
    
    init(_ date: String,_ transactions: [TransactionItem]) {
        self.date = date
        self.transactions = transactions
    }
}

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Data Source
    //var transactionsItems: [String] = []
    
    @IBOutlet weak var transactionsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var transactionsGrupItems = [
        GroupTransaction("Hoje", [
            TransactionItem(id: 1, type: "SUPERMERCADO", title: "Armazém João das Couves", amount: 1500.00, hour: "09:00AM"),
            TransactionItem(id: 2, type: "TRANSFERÊNCIA", title: "Aluguel Casa", amount: 2500.00, hour: "07:00PM"),
            TransactionItem(id: 3, type: "ASSINATURAS", title: "Spotify", amount: 17.90, hour: "4:00PM")
        ]),
        GroupTransaction("22/10/2019", [
            TransactionItem(id: 1, type: "SUPERMERCADO", title: "Armazém João das Couves", amount: 1500.00, hour: "09:00AM"),
            TransactionItem(id: 2, type: "TRANSFERÊNCIA", title: "Aluguel Casa", amount: 2500.00, hour: "07:00PM"),
            TransactionItem(id: 3, type: "ASSINATURAS", title: "Spotify", amount: 17.90, hour: "4:00PM")
        ]),
        GroupTransaction("21/10/2019", [
            TransactionItem(id: 1, type: "SUPERMERCADO", title: "Armazém João das Couves", amount: 1500.00, hour: "09:00AM"),
            TransactionItem(id: 2, type: "TRANSFERÊNCIA", title: "Aluguel Casa", amount: 2500.00, hour: "07:00PM"),
            TransactionItem(id: 3, type: "ASSINATURAS", title: "Spotify", amount: 17.90, hour: "4:00PM")
        ])
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 + self.transactionsGrupItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0)
        {
            return 2
        } else
        {
            return self.transactionsGrupItems[section - 1].transactions.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0)
        {
            if(indexPath.item == 0)
            {
                return tableView.dequeueReusableCell(withIdentifier: "CardOneViewCell", for: indexPath)
            } else
            {
                return tableView.dequeueReusableCell(withIdentifier: "CardTwoCell", for: indexPath)
            }
        } else
        {
            /*let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionsView", for: indexPath)
            let view = cell.subviews.first as! TransactionsView
            
            return cell*/
            
            return tableView.dequeueReusableCell(withIdentifier: "TransactionsView", for: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section > 0)
        {
            return self.transactionsGrupItems[section - 1].date
        }
        return nil
    }
}

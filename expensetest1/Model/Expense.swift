//
//  Expense.swift
//  expensetest1
//
//  Created by Rayna Shah on 2/4/23.
//

import SwiftUI

// MARK: Expense Model and Sample Data
struct Expense: Identifiable,Hashable{
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String{
    case income = "Income"
    case expense = "expenses"
    case all = "ALL"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Groceries", amount: 99, date: Date(timeIntervalSince1970: 1652987245),
            type: .expense, color: "darkgreen"),
    Expense(remark: "Chipotle", amount: 19, date: Date(timeIntervalSince1970: 1652814445), type:
            .expense, color: "forestgreen"),
    Expense(remark: "Sephora", amount: 99, date: Date(timeIntervalSince1970: 1652382445),
            type: .expense, color: "GREEN"),
    Expense(remark: "Uber", amount: 20, date: Date(timeIntervalSince1970: 1652296045), type:
            .expense, color: "lightgreen"),
    Expense(remark: "Amazon Purchase", amount: 299, date: Date(timeIntervalSince1970: 1652209645),
            type: .expense, color: "forestgreen"),
    Expense(remark: "Stocks", amount: 399, date: Date(timeIntervalSince1970: 1652036845), type:
            .income, color: "GREEN"),
    Expense(remark: "In App Purchase", amount: 5.99, date: Date(timeIntervalSince1970: 1651864045), type:
            .expense, color: "lightgreen"),
    Expense(remark: "Tickets", amount: 99, date: Date(timeIntervalSince1970: 1651691245),
            type: .expense, color: "darkgreen"),
    Expense(remark: "Apple Music", amount: 25, date: Date(timeIntervalSince1970: 1651518445),
            type: .expense, color: "GREEN"),
    Expense(remark: "Paycheck", amount: 180, date: Date(timeIntervalSince1970: 1651432045),
            type: .expense, color: "forestgreen"),
    
]

//
//  TransactionCardView.swift
//  expensetest1
//
//  Created by Rayna Shah on 2/19/23.
//

import SwiftUI

struct TransactionCardView: View {
    var expense: Expense
    @EnvironmentObject var expenseViewModel: ExpenseViewModel
    var body: some View{
        HStack(spacing: 12){
            //MARK: First Letter Avatar
           if let first = expense.remark.first{
               Text(String(first))
               .font(.title.bold())
               ;foregroundColor(.white)
               .frame(width: 50, height: 50)
               .background{
                   Circle()
                   
            }
                    
        }
            }
        }




    



struct TransactionCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


}

//
//  Home.swift
//  expensetest1
//
//  Created by Rayna Shah on 2/3/23.
//

import SwiftUI

struct Home: View {
    @StateObject var expenseViewModel: ExpenseViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 12){
            HStack(spacing: 18){
                VStack(alignment: .leading, spacing: 4) {
                    Text("Welcome, budgeting queen!")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text("luxMe Expense Tracker")
                        .font(.title2.bold())
                        .fontWeight(.thin)
                    .multilineTextAlignment(.leading)}
               
                
                
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Button{
                    
                } label: {
                    Image(systemName: "hexagon.fill")
                        .foregroundColor(.gray)
                        .overlay(content: {
                            Circle()
                                .stroke(.white,lineWidth: 2)
                                .padding(7)
                        })
                        .frame(width: 40, height: 40)
                        .background(Color.white,in:
                                        RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .shadow(color: .black.opacity(0.1), radius:
                                    5, x : 5, y: 4)
                }
                
            }
            ExpenseCardView()
            TransactionsView()
        }
        .padding()
        }
        .background{
            Color("palepink")
                .ignoresSafeArea()
        }
        
        
    }
    
    //MARK: Transactions View
    @ViewBuilder
    func TransactionsView()->some View{
        VStack{
            Text("Transactions")
                .font(.title2)
                .fontWeight(.thin)
                .opacity(0.7)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom)
            
            ForEach(expenseViewModel.expenses){expense in
                //MARK: transaction card view
             TransactionCardView(expense: expense)
                    .environmentObject(expenseViewModel)
                    .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    
                
            }
            
        }
        .padding(.top)
    }
    
    
    //MARK Expense Gradient Card View
    @ViewBuilder
    func ExpenseCardView()->some View{
        GeometryReader{proxy in
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(/*@START_MENU_TOKEN@*/Color(hue: 0.967, saturation: 0.155, brightness: 0.952, opacity: 0.756)/*@END_MENU_TOKEN@*/)
            
            
              
      
                
                
            
                   
                    
            VStack(spacing:15){
                VStack(spacing:15){
                    //MARK: Currently Going Month Date String
                    Text(expenseViewModel.currentMonthDateString())
                        .font(.headline)
                        .fontWeight(.thin)
                    
                    //MRK: Current Month Expenses Price
                    Text(expenseViewModel
                        .convertExpensestoCurrency(expenses: expenseViewModel.expenses))
                    .font(.title)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .padding(.bottom,5)
                    .offset(y: -8)
                    
                    HStack (spacing: 15){
                        Image(systemName: "arrow.down")
                            .font(.caption.bold())
                            .foregroundColor(.green)
                            .frame(width: 30, height:30)
                            .background(.white.opacity(0.7),in: Circle())
                        
                        VStack(alignment: .leading, spacing:4) {
                            Text("Income")
                                .font(.caption)
                                .opacity(0.7)
                            
                            Text(expenseViewModel
                                .convertExpensestoCurrency(expenses: expenseViewModel.expenses, type: .income))
                            .font(.callout)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .fixedSize()
                            
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        Image(systemName: "arrow.up")
                            .font(.caption.bold())
                            .foregroundColor(.red)
                            .frame(width: 30, height:30)
                            .background(.white.opacity(0.7),in: Circle())
                        
                        VStack(alignment: .leading, spacing:4) {
                            Text("Expenses")
                                .font(.caption)
                                .opacity(0.7)
                            
                            Text(expenseViewModel
                                .convertExpensestoCurrency(expenses: expenseViewModel.expenses, type: .expense))
                            .font(.callout)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .fixedSize()
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.trailing)
                    .offset(y:15)
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:
                    .center)
            
        }
        .frame(height:220)
        .padding(.top)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

import Cocoa

func main(){
    let jacket = 199.00
    print ("Original Proce: $" + String(jacket))
    // call the clearance function passing it the jacket price, storing the result in a variable - the jacket should be 50% off - print the clearance price
    let clearancePrice = clearance(jacket)
    print ("Discounted Price: $" + String(clearancePrice))
    // call the thirty function, pass it the clearance price
    // print the new price with the additional discount
    let newDiscountPrice = thirty(clearancePrice)
    print ("With the additional 30% discount, your new price is: $" + String(newDiscountPrice))
    
    // call the sales tax function, pass it the price with the additional discount. Make sales tax 6% (0.06)
    let salesTaxPrice = salesTax(newDiscountPrice)
   
    // print the sales tax amount
    print ("Sales Tax: $" + String(salesTaxPrice))
    
    //call the grand total passing it 2 arguments the discounted total and sales tax, add the two together and return the total
    let grandTotal = purchasePrice(newDiscountPrice: newDiscountPrice, salesTaxPrice: salesTaxPrice)
    // print the total
    print("Your total is: $" + String(grandTotal))
}

func clearance(_ jacket: Double) -> Double {
    // add an argument in main and clearance with the initial price of the jacket, return the clearance price (jacket *.5 - 50% off)
    let discountPrice = jacket * 0.5
    return discountPrice
}


func thirty(_ clearancePrice: Double) -> Double{
    // complete the function to recieve calculate 30% off of the clearance price (price * 0.3)
    let newDiscountPrice = clearancePrice * 0.7
    return newDiscountPrice
}


func salesTax(_ newDiscountPrice: Double) -> Double{
    // complete the function to calculate the sales tax (price * 0.06)
    let tax = newDiscountPrice * 0.06
    return tax
}

func purchasePrice(newDiscountPrice:Double, salesTaxPrice: Double) -> Double{
    // complete the function to calcualte the purchase price by passing the price and the sales tax, adding them together and returning the total
let total = newDiscountPrice + salesTaxPrice
    return total
}

main()

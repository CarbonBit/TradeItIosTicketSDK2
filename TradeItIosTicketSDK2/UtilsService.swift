class UtilsService: NSObject {
    private static let formatter = NSNumberFormatter()

    static func formatCurrency(number: NSNumber) -> String {
        formatter.numberStyle = .CurrencyStyle
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.stringFromNumber(number)!
    }
    
    static func formatCurrency(number: NSNumber, currencyCode: String) -> String {
        formatter.numberStyle = .CurrencyStyle
        formatter.currencyCode = currencyCode
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.stringFromNumber(number)!
    }
    
    static func formatQuantity(number: Float) -> String {
        formatter.numberStyle = .DecimalStyle
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.stringFromNumber(number)!
    }
    
    static func formatPercentage(number: NSNumber) -> String {
        formatter.numberStyle = .PercentStyle
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.stringFromNumber((number as Float)/100)!
    }

}
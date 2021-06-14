import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        guard (prices.count != 0 || prices != [0]) else { return 0 }
                
                var profit = 0
                var maxPrice = prices.max() ?? 0
                
                for (i,j) in prices.enumerated() {
                    
                    if (j < maxPrice && i < prices.firstIndex(of: maxPrice)!) {
                        profit += maxPrice - j
                    }
                    maxPrice = prices[((prices.firstIndex(of: maxPrice) ?? 0)+1)...].max() ?? 0
                }

                return profit
    }
}

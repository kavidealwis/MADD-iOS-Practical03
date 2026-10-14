// Exercise 04 – Closures, map, filter, and reduce

let marks = [72, 45, 65, 48, 90]

// filter
let passed = marks.filter { $0 >= 50 }

print(passed)

// map
let increasedMarks = marks.map { $0 + 5 }

print(increasedMarks)

// reduce
let total = marks.reduce(0) { $0 + $1 }

print(total)

// Activity 5
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

// 1. Only prices greater than 100
let expensivePrices = prices.filter { $0 > 100 }
print(expensivePrices)

// 2. Every price increased by 10
let increasedPrices = prices.map { $0 + 10 }
print(increasedPrices)

// 3. Total of all prices
let totalPrice = prices.reduce(0) { $0 + $1 }
print(totalPrice)

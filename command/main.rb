require_relative 'stock'
require_relative 'buystock'
require_relative 'sellstock'
require_relative 'broker'

stock = Stock.new

buy_stock = BuyStock.new(stock)
sell_stock = SellStock.new(stock)

broker = Broker.new
broker.take_order(buy_stock)
broker.take_order(sell_stock)

broker.place_orders



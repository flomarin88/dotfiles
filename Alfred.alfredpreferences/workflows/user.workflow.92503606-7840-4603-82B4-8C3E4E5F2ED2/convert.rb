require 'json'
require 'net/http'
require 'net/https'
require 'uri'

CURRENCIES = %i[BTC ETH].freeze

@items = { items: [] }

if !ARGV.empty?
  case ARGV[0].downcase
  when 'eur'
    @base_currency = 'EUR'
    @symbol = '€'
  when 'usd'
    @base_currency = 'USD'
    @symbol = '$'
  end
else
  @base_currency = 'EUR'
  @symbol = '€'
end


def build_requests(currency)
  sell_uri = "https://api.coinbase.com/v2/prices/#{currency}-#{@base_currency}/sell"
  buy_uri = "https://api.coinbase.com/v2/prices/#{currency}-#{@base_currency}/buy"
  spot_uri = "https://api.coinbase.com/v2/prices/#{currency}-#{@base_currency}/spot"

  sell_prices = JSON.parse(Net::HTTP.get(URI(sell_uri)))['data']
  buy_prices = JSON.parse(Net::HTTP.get(URI(buy_uri)))['data']
  spot_prices = JSON.parse(Net::HTTP.get(URI(spot_uri)))['data']

  data = {
    title: "#{currency.to_s.upcase}: #{spot_prices['amount']} #{@symbol}",
    subtitle: "Sell at #{sell_prices['amount']} #{@symbol} | Buy at #{buy_prices['amount']} #{@symbol}"
  }

  @items[:items] << data
end

CURRENCIES.each do |currency|
  build_requests(currency)
end

print @items.to_json

# {"items": [
#   {
#       "type": "file",
#       "title": "Desktop",
#       "subtitle": "~/Desktop",
#       "arg": "~/Desktop",
#       "autocomplete": "Desktop",
#       "icon": {
#           "type": "fileicon",
#           "path": "~/Desktop"
#       }
#   }
# ]}

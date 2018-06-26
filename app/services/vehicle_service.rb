module VehicleService
  def self.all_vehicles
    data = HTTParty.get('https://qa878qmgjk.execute-api.us-east-1.amazonaws.com/dev?page=1',
      headers: { 'Content-Type' => 'application/json',
                 'x-api-key': 'cPvW4cvlX73o7WeloOBzeWfvrb4Kl12uw0olDp90'
               }
    )
    data['records']
  end

  def self.search_min_max_price(prices)
    data = HTTParty.get("https://qa878qmgjk.execute-api.us-east-1.amazonaws.com/dev?page=1&price_min=#{prices[:min]}&price_max=#{prices[:max]}",
      headers: { 'Content-Type' => 'application/json',
                 'x-api-key': 'cPvW4cvlX73o7WeloOBzeWfvrb4Kl12uw0olDp90'
               }
    )
    data['records']
  end
end

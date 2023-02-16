class MerchantService

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.index
    response = Faraday.get('http://localhost:3000/api/v1/merchants')
    parse(response)
  end

  def self.show(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}")
    parse(response)
  end
end

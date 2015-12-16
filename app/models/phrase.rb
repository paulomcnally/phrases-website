class Phrase
  def self.base_api(resource)
    "http://api.frase.club/api/#{resource}"
  end

  def self.get_by_category(category, skip)
    url = base_api("Posts/feed?type=#{category}&skip=#{skip}")
    response = RestClient.get(url)
    JSON.parse(response, :symbolize_names => true)
  end


end

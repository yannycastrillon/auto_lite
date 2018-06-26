class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :url_params

  # Builds the query params of the URL.
  def url_params(api_vehicle)
    result = ""
    h = api_vehicle.slice('model','make','year','price','primary_photo_url')
    h.keys.each { |key| result += "#{key}=#{h[key]}&" }
    result
  end
end

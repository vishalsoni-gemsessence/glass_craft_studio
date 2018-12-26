# frozen_string_literal: true

json.countries(@countries) do |country|
  json.id country.id
  json.name country.name
end

json.count @countries.count
json.total_count @countries.total_count
json.current_page params[:page] ? params[:page].to_i : 1
json.per_page params[:per_page] || Kaminari.config.default_per_page
json.pages @countries.total_pages

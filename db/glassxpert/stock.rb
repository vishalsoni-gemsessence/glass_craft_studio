# frozen_string_literal: true

Spree::Variant.all.each do |variant|
  variant.stock_items.each do |stock_item|
    Spree::StockMovement.create(quantity: 100, stock_item: stock_item)
  end
end

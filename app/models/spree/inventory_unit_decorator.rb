Spree::InventoryUnit.class_eval do

  def ensure_can_destroy
    if !backordered? && !on_hand?
      errors.add(:state, :cannot_destroy, state: state)
      throw :abort
    end

    if !shipment.nil?
      if shipment.shipped? || shipment.canceled?
        errors.add(:base, :cannot_destroy_shipment_state, state: shipment.state)
        throw :abort
      end
    end
  end
      
end
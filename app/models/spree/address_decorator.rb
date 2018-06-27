Spree::Address.class_eval do

  private
  
  def validate_state_matches_country
    if state && country.states_required? && state.country != country
      errors.add(:state, :does_not_match_country)
    end    
  end
  
end
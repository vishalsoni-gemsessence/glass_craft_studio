module Spree
  module Admin
    SearchController.class_eval do
      
      def countries
        if params[:ids]
            # split here may be String#split or Array#split, so we must flatten the results
            @countries = Spree::Country.where(id: params[:ids].split(",").flatten)
        else
            @countries = Spree::Country.accessible_by(current_ability, :read).ransack(params[:q]).result
        end

        @countries = @countries.distinct.page(params[:page]).per(params[:per_page])
        expires_in 15.minutes, public: true
        headers['Surrogate-Control'] = "max-age=#{15.minutes}"
      end
    end
  end
end

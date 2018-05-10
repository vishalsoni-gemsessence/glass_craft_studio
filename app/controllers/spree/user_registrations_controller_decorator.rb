Spree::UserRegistrationsController.class_eval do
 def create
   build_resource(spree_user_params)
   if resource.save
     set_flash_message(:notice, :signed_up)
     sign_in(:spree_user, resource)
     session[:spree_user_signup] = true
     respond_with resource, location: after_sign_up_path_for(resource)
   else
     clean_up_passwords(resource)
     respond_with(resource) do |format|
       format.html do
         flash[:alert] = resource.errors.full_messages.join(", <br>").html_safe
         render :new
       end
     end
   end
 end

 private

 def spree_user_params
   spree_users_param = (Spree::PermittedAttributes.user_attributes | [:email]).yield_self{ |it| it.push(:full_name) }

   params.require(:spree_user).permit(spree_users_param)
 end

end
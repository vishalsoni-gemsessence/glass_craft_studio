class AddAdminUser < ActiveRecord::Migration[5.1]
  def change
    user = Spree::User.create!(email: "admin@example.com", password: "P@ssword")

    admin_role = Spree::Role.find_or_create_by!(name: "admin")

    user.spree_roles << admin_role
  end
end

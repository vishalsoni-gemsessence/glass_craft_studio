Deface::Override.new(
   :virtual_path   => "spree/admin/taxonomies/_form",
   :name           => "add_title_and_description_to_taxonomies",
   :replace  => "[data-hook='admin_inside_taxonomy_form']",
   :partial        =>  "spree/admin/taxonomies/add_template_to_taxonomies"
)
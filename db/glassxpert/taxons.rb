categories = Spree::Taxonomy.find_by!(name: "Categories")
brands = Spree::Taxonomy.find_by!(name: "Brands")
subCategories = Spree::Taxonomy.find_or_create_by!(name: "SubCategories")
products = {
  clear: "Clear 001",
  air_blue_opal: "Air Blue Opal 285"
}

products.each do |key, name|
  products[key] = Spree::Product.find_by!(name: name)
end

taxons = [
  { name: "Categories", taxonomy: categories, position: 0 },
  { name: "SubCategories", taxonomy: categories, position: 0 },
  { name: "glass-gifts", taxonomy: categories, parent: "Categories", position: 0},

  { name: "2058", taxonomy: categories, parent: "glass-gifts", position: 0,
    products: [
      products[:clear],
      products[:air_blue_opal]#,
    ]
  },

  { name: "2088", taxonomy: categories, parent: "glass-gifts", position: 1,
    products: [
      products[:clear],
      products[:air_blue_opal]
    ]
  },

  { name: "glass-photo-prints", taxonomy: categories, parent: "Categories", position: 1},

  { name: "Clear", taxonomy: categories, parent: "glass-photo-prints", position: 0,
    products: [
      products[:clear]
    ]
  },
  { name: "Blue", taxonomy: categories, parent: "glass-photo-prints", position: 5,
    products: [
      products[:air_blue_opal]
    ]
  },
  { name: "Opal", taxonomy: categories, parent: "glass-photo-prints", position: 13,
    products: [
      products[:air_blue_opal]
    ]
  },

  { name: "photo-gallery", taxonomy: categories, parent: "Categories", position: 2},

  { name: "SS5", taxonomy: categories, parent: "photo-gallery", position: 0,
    products: [
      products[:clear],
      products[:air_blue_opal]
    ]
  },
  { name: "SS7", taxonomy: categories, parent: "photo-gallery", position: 1,
    products: [
      products[:clear],
      products[:air_blue_opal]
    ]
  },
  { name: "SS9", taxonomy: categories, parent: "photo-gallery", position: 2,
    products: [
      products[:clear],
      products[:air_blue_opal]
    ]
  },
  { name: "SS12", taxonomy: categories, parent: "photo-gallery", position: 3,
    products: [
      products[:clear]
    ]
  },
  { name: "SS20", taxonomy: categories, parent: "photo-gallery", position: 5,
    products: [
      products[:clear],
      products[:air_blue_opal]
    ]
  },

]

taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by!(name: taxon_attrs[:parent])
    Spree::Taxon.create!(taxon_attrs)
  end
end


Spree::Taxon.first.update(permalink: "photo-gallery")

Spree::Taxon.second.update(permalink: "glass-gifts")

Spree::Taxon.third.update(permalink: "glass-photo-prints")

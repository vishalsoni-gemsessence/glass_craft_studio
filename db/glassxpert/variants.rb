# frozen_string_literal: true

clear = Spree::Product.find_by!(name: "Clear 001")
air_blue_opal = Spree::Product.find_by!(name: "Air Blue Opal 285")
# amethyst = Spree::Product.find_by!(name: "Amethyst 204")
# aquamarine = Spree::Product.find_by!(name: "Aquamarine 202")
# black_diamond = Spree::Product.find_by!(name: "Black Diamond 215")
# blue_zircon = Spree::Product.find_by!(name: "Blue Zircon 229")
# burgundy = Spree::Product.find_by!(name: "Burgundy 515")
# capri_blue = Spree::Product.find_by!(name: "Capri Blue 243")
# caribbean_blue_opal = Spree::Product.find_by!(name: "Caribbean Blue Opal 394")
# chrysolite = Spree::Product.find_by!(name: "Chrysolite 238")
# citrine = Spree::Product.find_by!(name: "Citrine 249")
# cobalt = Spree::Product.find_by!(name: "Cobalt 369")
# cyclamen_opal = Spree::Product.find_by!(name: "Cyclamen Opal 398")
# dark_indigo = Spree::Product.find_by!(name: "Dark Indigo 288")
# # denim_blue = Spree::Product.find_by!(name: "Denim Blue 266")
# emerald = Spree::Product.find_by!(name: "Emerald 205")
# erinite = Spree::Product.find_by!(name: "Erinite 360")
# fern_green = Spree::Product.find_by!(name: "Fern Green 291")
# fire_opal = Spree::Product.find_by!(name: "Fire Opal 237")
# fuchsia = Spree::Product.find_by!(name: "Fuchsia 502")
# greige = Spree::Product.find_by!(name: "Greige 284")
# hyacinth = Spree::Product.find_by!(name: "Hyacinth 236")
# indian_pink = Spree::Product.find_by!(name: "Indian Pink 289")
# indian_siam = Spree::Product.find_by!(name: "Indian Siam 327")
# jet = Spree::Product.find_by!(name: "Jet 280")
# jonquil = Spree::Product.find_by!(name: "Jonquil 213")
# khaki = Spree::Product.find_by!(name: "Khaki 550")
# light_amethyst = Spree::Product.find_by!(name: "Light Amethyst 212")
# light_colorado_topaz = Spree::Product.find_by!(name: "Light Colorado Topaz 246")
# light_peach = Spree::Product.find_by!(name: "Light Peach 362")
# light_rose = Spree::Product.find_by!(name: "Light Rose 223")
# light_sapphire = Spree::Product.find_by!(name: "Light Sapphire 211")
# light_siam = Spree::Product.find_by!(name: "Light Siam 227")
# light_topaz = Spree::Product.find_by!(name: "Light Topaz 226")
# mocca = Spree::Product.find_by!(name: "Mocca 286")
# montana = Spree::Product.find_by!(name: "Montana 207")
# olivine = Spree::Product.find_by!(name: "Olivine 228")
# pacific_opal = Spree::Product.find_by!(name: "Pacific Opal 390")
# padparadscha = Spree::Product.find_by!(name: "Padparadscha 542")
# peridot = Spree::Product.find_by!(name: "Peridot 214")
# purple_velvet = Spree::Product.find_by!(name: "Purple Velvet 277")
# rose = Spree::Product.find_by!(name: "Rose 209")
# ruby = Spree::Product.find_by!(name: "Ruby 501")
# sand_opal = Spree::Product.find_by!(name: "Sand Opal 287")
# sapphire = Spree::Product.find_by!(name: "Sapphire 206")
# siam = Spree::Product.find_by!(name: "Siam 208")
# silk = Spree::Product.find_by!(name: "Silk 391")
# smoked_topaz = Spree::Product.find_by!(name: "Smoked Topaz 220")
# sun = Spree::Product.find_by!(name: "Sun 248")
# sunflower = Spree::Product.find_by!(name: "Sunflower 292")
# tanzanite = Spree::Product.find_by!(name: "Tanzanite 539")
# topaz = Spree::Product.find_by!(name: "Topaz 203")
# vintage_rose = Spree::Product.find_by!(name: "Vintage Rose 319")
# white_opal = Spree::Product.find_by!(name: "White Opal 234")
# aquamarine_ab = Spree::Product.find_by!(name: "Aquamarine 202 AB")
# clear_ab = Spree::Product.find_by!(name: "Clear 001 AB")
# lilac_shadow = Spree::Product.find_by!(name: "Crystal Lilac Shadow 001 LISH")
# meridian_blue = Spree::Product.find_by!(name: "Crystal Meridian Blue 001 MBL")
# rose_gold = Spree::Product.find_by!(name: "Crystal Rose Gold 001 ROGL")
# volcano = Spree::Product.find_by!(name: "Crystal Volcano 001 VOL")
# jet_hematite = Spree::Product.find_by!(name: "Jet Hematite 280 HEM")


ss5 = Spree::OptionValue.find_by!(name: "SS5")
ss7 = Spree::OptionValue.find_by!(name: "SS7")
ss9 = Spree::OptionValue.find_by!(name: "SS9")
ss12 = Spree::OptionValue.find_by!(name: "SS12")
ss16 = Spree::OptionValue.find_by!(name: "SS16")
ss20 = Spree::OptionValue.find_by!(name: "SS20")

small = Spree::OptionValue.find_by!(name: "Small")
large = Spree::OptionValue.find_by!(name: "Large")
superpack = Spree::OptionValue.find_by!(name: "SuperPack")
wholesale = Spree::OptionValue.find_by!(name: "Wholesale")


clear_crystal_ss5_price = { small: 3.76, large: 5.25, superpack: 9.50, wholesale: 38.90 }
clear_crystal_ss7_price = { small: 3.80, large: 5.31, superpack: 9.61, wholesale: 39.50 }
clear_crystal_ss9_price = { small: 3.84, large: 5.37, superpack: 9.73, wholesale: 40.00 }
clear_crystal_ss12_price = { small: 4.04, large: 5.68, superpack: 10.36, wholesale: 43.10 }
clear_crystal_ss16_price = { small: 4.80, large: 6.85, superpack: 12.69, wholesale: 53.80 }
clear_crystal_ss20_price = { small: 5.86, large: 8.47, superpack: 15.95, wholesale: 68.60 }

clear_ab_crystal_ss5_price = { small: 4.51, large: 6.40, superpack: 11.80, wholesale: 49.94 }
clear_ab_crystal_ss7_price = { small: 4.57, large: 6.49, superpack: 11.97, wholesale: 50.71 }
clear_ab_crystal_ss9_price = { small: 4.62, large: 6.56, superpack: 12.12, wholesale: 51.36 }
clear_ab_crystal_ss12_price = { small: 4.91, large: 7.01, superpack: 13.02, wholesale: 55.26 }
clear_ab_crystal_ss16_price = { small: 5.95, large: 8.62, superpack: 16.25, wholesale: 66.29 }
clear_ab_crystal_ss20_price = { small: 6.44, large: 10.91, superpack: 20.82, wholesale: 89.16 }

normal_crystal_ss5_price = { small: 3.14, large: 4.83, superpack: 9.66, wholesale: 42.00 }
normal_crystal_ss7_price = { small: 3.19, large: 4.90, superpack: 9.81, wholesale: 42.65 }
normal_crystal_ss9_price = { small: 3.23, large: 4.96, superpack: 9.93, wholesale: 43.17 }
normal_crystal_ss12_price = { small: 3.47, large: 5.34, superpack: 10.68, wholesale: 46.42 }
normal_crystal_ss16_price = { small: 4.37, large: 6.73, superpack: 13.45, wholesale: 58.49 }
normal_crystal_ss20_price = { small: 5.65, large: 8.70, superpack: 17.40, wholesale: 75.64 }

color_ab_crystal_ss5_price = { small: 3.73, large: 5.74, superpack: 11.48, wholesale: 49.92 }
color_ab_crystal_ss7_price = { small: 3.73, large: 5.74, superpack: 11.48, wholesale: 49.92 }
color_ab_crystal_ss9_price = { small: 3.73, large: 5.74, superpack: 11.48, wholesale: 49.92 }
color_ab_crystal_ss12_price = { small: 4.20, large: 6.46, superpack: 12.92, wholesale: 56.16 }
color_ab_crystal_ss16_price = { small: 5.31, large: 8.18, superpack: 16.35, wholesale: 71.09 }
color_ab_crystal_ss20_price = { small: 7.13, large: 10.97, superpack: 21.94, wholesale: 95.38 }


variants = [
  { product: clear, option_values: [ss5, small], sku: "SWR-001-SS5-S", price: clear_crystal_ss5_price[:small] },

  { product: air_blue_opal, option_values: [ss5, small], sku: "SWR-285-SS5-S", price: normal_crystal_ss5_price[:small] },

]

masters = {
  clear => { sku: "SWR-001" },
  air_blue_opal => { sku: "SWR-285" }
}

Spree::Variant.create!(variants)

masters.each do |product, variant_attrs|
  product.master.update_attributes!(variant_attrs)
end

# frozen_string_literal: true

size = Spree::OptionType.find_by!(presentation: "Size")
package = Spree::OptionType.find_by!(presentation: "Package")

Spree::OptionValue.create!([
  {
    name: "SS5",
    presentation: "SS5",
    position: 1,
    option_type: size
  },
  {
    name: "SS7",
    presentation: "SS7",
    position: 2,
    option_type: size
  },
  {
    name: "SS9",
    presentation: "SS9",
    position: 3,
    option_type: size
  },
  {
    name: "SS12",
    presentation: "SS12",
    position: 4,
    option_type: size
  },
  {
    name: "SS16",
    presentation: "SS16",
    position: 5,
    option_type: size
  },
  {
    name: "SS20",
    presentation: "SS20",
    position: 6,
    option_type: size
  },
  {
    name: "Small",
    presentation: "Small",
    position: 1,
    option_type: package
  },
  {
    name: "Large",
    presentation: "Large",
    position: 2,
    option_type: package
  },
  {
    name: "SuperPack",
    presentation: "SuperPack",
    position: 3,
    option_type: package
  },
  {
    name: "Wholesale",
    presentation: "Wholesale",
    position: 4,
    option_type: package
  }
])

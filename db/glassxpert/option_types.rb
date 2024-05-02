# frozen_string_literal: true

Spree::OptionType.create!([
  {
    name: "crystal-size",
    presentation: "Size",
    position: 1
  },
  {
    name: "crystal-package",
    presentation: "Package",
    position: 2
  }
])

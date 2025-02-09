local flib = require("__flib__/data-util")
local config = require("__LTN_Combinator_Modernized__/script/config")

local ltnc_entity = flib.copy_prototype(data.raw["constant-combinator"]["constant-combinator"], "ltn-combinator")

ltnc_entity.icon = "__LTN_Combinator_Modernized__/graphics/ltn-combinator.png"
ltnc_entity.icon_size = 32
ltnc_entity.icon_mipmaps = nil
ltnc_entity.next_upgrade = nil
ltnc_entity.item_slot_count = config.ltnc_slot_count
ltnc_entity.fast_replaceable_group = "constant-combinator"
ltnc_entity.sprites = make_4way_animation_from_spritesheet(
  { layers =
    {
      {
        filename = "__LTN_Combinator_Modernized__/graphics/ltn-combinator.png",
        width = 58,
        height = 52,
        frame_count = 1,
        shift = util.by_pixel(0, 5),
        hr_version = {
          scale = 0.5,
          filename = "__LTN_Combinator_Modernized__/graphics/hr-ltn-combinator.png",
          width = 114,
          height = 102,
          frame_count = 1,
          shift = util.by_pixel(0, 5),
        },
      },
      {
        filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
        width = 50,
        height = 30,
        frame_count = 1,
        shift = util.by_pixel(9,6),
        draw_as_shadow = true,
        hr_version = {
          scale = 0.5,
          filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
          width = 98,
          height = 66,
          frame_count = 1,
          shift = util.by_pixel(8.5, 5.5),
          draw_as_shadow = true,
        },
      },
    },
  }
)

local ltnc_item = flib.copy_prototype(data.raw["item"]["constant-combinator"], "ltn-combinator")
ltnc_item.icon = "__LTN_Combinator_Modernized__/graphics/ltn-combinator-item.png"
ltnc_item.icon_size = 64
ltnc_item.icon_mipmaps = 4

local ltnc_recipe = flib.copy_prototype(data.raw["recipe"]["constant-combinator"], "ltn-combinator")
ltnc_recipe.ingredients = {
  {type = "item", name = "constant-combinator", amount = 1},
  {type = "item", name = "electronic-circuit", amount = 1},
}

data:extend({
  ltnc_entity,
  ltnc_item,
  ltnc_recipe,
})

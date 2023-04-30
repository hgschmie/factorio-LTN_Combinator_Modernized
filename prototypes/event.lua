data:extend{
  --[[
  {
    type="custom-input",
    name="ltnc-escape",
    key_sequence="",
    linked_game_control="toggle-menu",
  },
  {
    type="custom-input",
    name="ltnc-close",
    key_sequence="",
    linked_game_control="confirm-gui",
  },
  ]]
  {
    type = "custom-input",
    name = "ltnc-linked-open-gui",
    key_sequence = "",
    linked_game_control = "open-gui",
    include_selected_prototype = true,
  },
  {
    type = "custom-input",
    name  = "ltnc-linked-paste-settings",
    key_sequence = "",
    linked_game_control = "paste-entity-settings",
    include_selected_prototype = true,
  }
}
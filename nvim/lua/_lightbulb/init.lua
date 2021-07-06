require "nvim-lightbulb".update_lightbulb {
  sign = {
    enabled = true,
    priority = 10
  },
  float = {
    enabled = false,
    text = "💡",
    win_opts = {}
  },
  virtual_text = {
    enabled = false,
    text = "💡"
  },
  status_text = {
    enabled = false,
    text = "💡",
    text_unavailable = ""
  }
}

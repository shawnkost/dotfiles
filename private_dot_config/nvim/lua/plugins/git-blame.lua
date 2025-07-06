return {
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
      enabled = true,
      message_template = " <summary> • <date> • <author>", -- template for the blame message, check the Message template section for more options
      date_format = "%m-%d-%Y %I:%M%p", -- template for the date
      virtual_text_column = 1,
    },
  },
}

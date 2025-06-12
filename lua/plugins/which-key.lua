return {
  "folke/which-key.nvim",  -- El plugin que se está utilizando
  event = "VeryLazy",  -- Cargar el plugin cuando se desencadene el evento 'VeryLazy'
  
  opts = {
    preset = "classic",  -- Diseño del popup de which-key
  },

  keys = {
    {
      "<leader>?",  -- La tecla que muestra el popup de which-key
      function()
        require("which-key").show({ global = false })  -- Muestra el popup de which-key
      end,
      desc = "Buffer Local Keymaps (which-key)",  -- Descripción para este comando
    },
  },
}

return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
	config = function()
	    require("neo-tree").setup({
	      default_component_configs = {
		icon = {
		  enabled = true, -- İkonların açık olduğundan emin ol
		  folder_closed = "󰉋",
		  folder_open = "󰝰",
		  folder_empty = "󰉖",
		  default = "*",
		  highlight = "NeoTreeFileIcon"
		},
	      },
		git_status = {
		    symbols = {
		      added     = "+",
		      modified  = "~",
		      deleted   = "x",
		      renamed   = "->",
		      untracked = "?",
		      ignored   = "I",
		      unstaged  = "u",
		      staged    = "s",
		      conflict  = "!",
		    },
	  },	
	      filesystem = {
		    window = {
		      mappings = {
			-- İstersen buraya özel tuş atamaları yapabilirsin
		      }
		    }
		  },
		    })
	end,
        keys = {
            {
                "<leader>e",
                "<cmd>Neotree toggle<cr>",
                desc = "Toggle file explorer",
            },
        },
	opts = {
	    width = 20,

	    default_component_configs = {
		indent = {
		    with_markers = false,
		},
	    },
	},
     },
}

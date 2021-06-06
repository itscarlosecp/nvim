local apply_options = function(opts)
  for k, v in pairs(opts) do
    vim.opt[k] = v
  end
end

local options = {
  autoindent     = true, -- enable autoindent
  expandtab      = true, -- use spaces instead of tabs
  hidden         = true, -- keep hidden buffers
  number         = true, -- enable number
  relativenumber = true, -- enable relativenumber
}

apply_options(options)


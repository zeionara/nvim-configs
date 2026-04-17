-- https://github.com/yetone/avante.nvim/wiki/Custom-providers

return {
  provider = 'openrouter',
  windows = {
    width = 40,
    ask = {
      floating = true,
      border = 'rounded',
      start_insert = false
    }
  },
  providers = {
    normax = require('normax-avante-provider'),
    openrouter = {
      __inherited_from = 'openai',
      endpoint = 'https://openrouter.ai/api/v1',
      model = 'anthropic/claude-opus-4.6',
      api_key_name = 'AVANTE_OPENROUTER_API_KEY',
      timeout = 600000, -- 10 minutes
      disable_tools = true,
    }
  }
}

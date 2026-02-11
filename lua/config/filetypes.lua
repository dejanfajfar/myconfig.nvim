-- Custom filetype mappings

vim.filetype.add {
  extension = {
    -- Environment files
    env = 'sh',

    -- Config files
    eslintrc = 'json',
    prettierrc = 'json',
    babelrc = 'json',

    -- Web
    mdx = 'markdown',
    astro = 'astro',

    -- DevOps
    tf = 'terraform',
    tfvars = 'terraform',
    hcl = 'hcl',

    -- Data
    jsonc = 'jsonc',

    -- Misc
    zsh = 'zsh',
    tmux = 'tmux',
    conf = 'conf',
  },
  filename = {
    ['.env'] = 'sh',
    ['.env.local'] = 'sh',
    ['.env.development'] = 'sh',
    ['.env.production'] = 'sh',
    ['.envrc'] = 'sh',
    ['tsconfig.json'] = 'jsonc',
    ['jsconfig.json'] = 'jsonc',
  },
}

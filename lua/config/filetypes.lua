-- Custom filetype mappings

vim.filetype.add {
  extension = {
    -- Environment files
    env = 'sh',

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
    -- Config dotfiles that have no extension
    ['.eslintrc'] = 'json',
    ['.prettierrc'] = 'json',
    ['.babelrc'] = 'json',
  },
  pattern = {
    -- Helm templates
    ['.*/templates/.*%.yaml'] = 'helm',
    ['.*/templates/.*%.yml'] = 'helm',
    ['.*/templates/.*%.tpl'] = 'helm',
    ['helmfile.*%.yaml'] = 'helm',
  },
}

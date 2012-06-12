# gitgrep.vim #

This plugin adds command and keymappings to interact with git-grep from vim.

## Usage ##

### Commands ###

#### GitGrep ####

Grep terms are passed as is to the git grep command.

#### Examples

    :GitGrep my_term
    :GitGrep "def my_function" -- **/*.rb

#### GitGrepWord ####

Grep the word under the cursor.

	:GitGrepWord

Keymapping

  `<Leader>gw`



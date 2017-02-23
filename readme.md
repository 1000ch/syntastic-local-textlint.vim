# syntastic-local-textlint.vim

Prefer local install of textlint over global install with syntastic

## Usage

Configure your `.vimrc` such as following.

```vim
call dein#add('vim-syntastic/syntastic')
call dein#add('1000ch/syntastic-local-textlint.vim')
let g:syntastic_markdown_checkers = ['textlint']
```

## License

[MIT](https://1000ch.mit-license.org) © [Shogo Sensui](https://github.com/1000ch)

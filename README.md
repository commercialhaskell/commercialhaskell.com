commercialhaskell.com
=====

commercialhaskell.com web site.

## Building

Clone the repo:

    $ git clone git@github.com:commercialhaskell/commercialhaskell.com.git

Build:

    $ stack build

Done!

---

OS X with homebrew:

    $ brew install icu4c

Add the following to your `~/.stack/stack.yaml`:

    extra-include-dirs:
    - /usr/local/opt/icu4c/include
    extra-lib-dirs:
    - /usr/local/opt/icu4c/lib

Now:

    $ stack build

## Running

It runs at: http://localhost:1990/

Manually running the binary:

    $ dist/build/hl/hl

Running from inside GHCi:

    > :l DevelMain
    > DevelMain.update

Run this every time you want to update the web handler in-place, as in
[this demo](https://github.com/chrisdone/ghci-reload-demo).

If you use Emacs, you can just bind it to a key:

``` lisp
(define-key html-mode-map [f12] 'haskell-process-reload-devel-main)
```

Just hit f12 to recompile and restart.

## Style

We generally use
[this style](https://github.com/chrisdone/haskell-style-guide)
for this project. You don't have to use this style, we can reformat patches as
they come in.

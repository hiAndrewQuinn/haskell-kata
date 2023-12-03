# haskell-kata
Various Haskell exercises I do. No commentary.

## Quickstart

```bash
git config --local alias.build '!sh -c \'for file in *.hs; do ghc -o "${file%.hs}-bin" "$file"; done\''
git build
```

## Test `type-classes-sugar.hs`

1. Install ghcup: https://www.haskell.org/ghcup/
2. `ghc type-classes-sugar.hs && ./type-classes-sugar`

## Test `whatever-else-sugar.hs`

1. Install ghcup: https://www.haskell.org/ghcup/
2. `ghc whatever-else-sugar.hs && ./whatever-else-sugar`

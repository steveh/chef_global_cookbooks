if platform?("freebsd")
  package "hs-haskell-platform"
else
  package "haskell-platform"
end

raise "Incomplete package, see notes"

# Does not cabal-update

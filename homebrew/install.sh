#!/bin/sh

install() {
  if test "$(uname)" = "Darwin"
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "  Unknown OS; skipping Homebrew..."
  fi
}

# Check
if test ! $(which brew)
then
  echo "  Installing Homebrew..."

  install
fi

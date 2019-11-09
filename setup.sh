#!/bin/bash
#Steve Dao 2019

# variables
green=`tput setaf 2`

if type brew
then
  ${green};echo ">>> Skip installing Homebrew..."
else
  echo ">>> Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if type carthage
then
  echo ">>> Skip installing Carthage..."
else
  echo ">>> Installing Carthage..."
  brew update && brew install carthage
fi

echo "Installing dependancies..."
carthage update --platform iOS
echo "Opening project by Xcode..."
open ./Cathay.xcodeproj
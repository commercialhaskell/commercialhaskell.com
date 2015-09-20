{-# LANGUAGE OverloadedStrings #-}

-- | SIG page controller.

module HL.Controller.SIG where

import HL.Controller
import HL.Controller.Markdown
import HL.View

-- | SIG controller.
getSIGR :: C (Html ())
getSIGR =
  markdownPage [] "Commercial Haskell Special Interest Group" "sig.md"

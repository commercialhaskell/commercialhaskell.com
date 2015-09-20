{-# LANGUAGE OverloadedStrings #-}

-- | Guide page controller.

module HL.Controller.Guide where

import HL.Controller
import HL.Controller.Markdown
import HL.View


-- | Guide controller.
getGuideR :: C (Html ())
getGuideR =
  markdownPage [] "Guide" "guide.md"

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS -fno-warn-unused-do-bind #-}

-- | Guide page view.

module HL.View.Guide where

import HL.View
import HL.View.Template

-- | Guide view.
guideV :: FromLucid App
guideV =
  template
    []
    "Guide"
    (\url ->
       container_
         (row_
            (span12_ [class_ "col-md-12"]
               (do h1_ "Guide"
                   p_ "<Insert guide here>"))))

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS -fno-warn-unused-do-bind #-}

-- | SIG page view.

module HL.View.SIG where

import HL.View
import HL.View.Template

-- | SIG view.
sigV :: FromLucid App
sigV =
  template
    []
    "SIG"
    (\url ->
       container_
         (row_
            (span12_ [class_ "col-md-12"]
               (do h1_ "SIG"
                   p_ "<Insert SIG info here>"))))

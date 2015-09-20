{-# LANGUAGE OverloadedStrings #-}

-- | Guide page controller.

module HL.Controller.Guide where

import HL.Controller
import HL.View
import HL.View.Guide

-- | Guide controller.
getGuideR :: C (Html ())
getGuideR =
  lucid guideV

{-# LANGUAGE OverloadedStrings #-}

-- | Case studies page controller.

module HL.Controller.CaseStudies where

import HL.Controller
import HL.View
import HL.View.CaseStudies

-- | Case studies controller.
getCaseStudiesR :: C (Html ())
getCaseStudiesR =
  lucid caseStudiesV

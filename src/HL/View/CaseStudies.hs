{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS -fno-warn-unused-do-bind #-}

-- | Case studies.

module HL.View.CaseStudies where

import HL.View
import HL.View.Template
import HL.View.Home.CaseStudies

-- | Documentation view.
caseStudiesV :: FromLucid App
caseStudiesV =
  template
    []
    "Case Studies"
    (\url ->
       caseStudies)

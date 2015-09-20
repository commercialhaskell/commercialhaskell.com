{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

-- | Home/landing page.

module HL.View.Home where

import HL.View

import HL.View.Home.Features
import HL.View.Template

-- | Home view.
homeV :: [(Text, Text, Text)] -> FromLucid App
homeV vids =
  skeleton
    "Commercial Haskell"
    (\_ _ ->
       linkcss "https://fonts.googleapis.com/css?family=Ubuntu:700")
    (\cur url ->
       do navigation True [] Nothing url
          header url
          try url
          community url vids
          whatIsHaskell
          gettingStarted url
          sponsors
          events
          div_ [class_ "mobile"] $
               (navigation False [] cur url))
    (\_ url ->
       scripts url
               [js_jquery_console_js
               ,js_tryhaskell_js
               ,js_tryhaskell_pages_js])

gettingStarted
  :: (Route App -> Text) -> Html ()
gettingStarted url =
  div_ [class_ "getting-started-subsection"]
       (container_
          (do h1_ "Next steps"
              p_ "We have everything you need to start working with Haskell now."
              p_ (a_ [href_ (url GuideR)] "Starting guide →")
              p_ "We have collected case studies from businesses using Haskell in industry."
              p_ (a_ [href_ (url CaseStudiesR)] "View case studies →")))

-- | Top header section with the logo and code sample.
header :: (Route App -> Text) -> Html ()
header url =
  div_ [class_ "header"] $
  (container_
     (row_ (do span6_ [class_ "col-md-6"]
                      (div_ [class_ "branding"]
                            (do branding
                                summation))
               span6_ [class_ "col-md-6"]
                      (div_ [class_ "branding"]
                            (do tag
                                sample)))))
  where branding =
          span_ [class_ "name",background url img_logo_png] "Haskell"
        summation =
          span_ [class_ "summary"] "Commercial quality resources for learning and using Haskell"
        tag =
          span_ [class_ "tag"] "Getting started"
        sample =
          do p_ [style_ "margin-top: 2em;"]"Everything you need to start working with Haskell."
             p_ [style_ "margin-top:1em;"] (a_ [href_ (url GuideR)] "Starting guide →")

-- | Code sample.
-- TODO: should be rotatable and link to some article.
codeSample :: Text
codeSample =
  "primes = filterPrime [2..] \n\
  \  where filterPrime (p:xs) = \n\
  \          p : filterPrime [x | x <- xs, x `mod` p /= 0]"

-- | Try Haskell section.
try :: (Route App -> Text) -> Html ()
try _ =
  div_ [class_ "try",onclick_ "tryhaskell.controller.inner.click()"]
       (container_
          (row_ (do span6_ [class_ "col-md-6"] repl
                    span6_ [class_ "col-md-6",id_ "guide"]
                           (return ()))))
  where repl =
          do h2_ "Try it"
             noscript_ (span6_ (div_ [class_ "alert alert-warning"]
                    "Try haskell requires Javascript to be enabled."))
             span6_ [hidden_ "", id_ "cookie-warning"]
                  (div_ [class_ "alert alert-warning"]
                  "Try haskell requires cookies to be enabled.")
             div_ [id_ "console"]
                  (return ())

-- | Community section.
-- TOOD: Should contain a list of thumbnail videos. See mockup.
community :: (Route App -> Text) -> [(Text, Text, Text)] -> Html ()
community url vids =
  div_ [id_ "community-wrapper"]
       (do div_ [class_ "community",background url img_community_jpg]
                (do container_
                      [id_ "tagline"]
                      (row_ (span8_ [class_ "col-md-8"]
                                    (do h1_ "An initiative by the Commercial Haskell Group"
                                        p_ [class_ "learn-more"]
                                           (a_ [href_ (url SIGR)] "Learn more"))))
                    container_
                      [id_ "video-description"]
                      (row_ (span8_ [class_ "col-md-8"]
                                    (do h1_ (a_ [id_ "video-anchor"] "<title here>")
                                        p_ (a_ [id_ "video-view"] "View the video now \8594"))))))

-- | Events section.
-- TODO: Take events section from Haskell News?
events :: Html ()
events =
  return ()

-- | List of sponsors.
sponsors :: Html ()
sponsors =
  div_ [class_ "sponsors"] $
    container_ $
      do row_ (span6_ [class_ "col-md-6"] (h1_ "Sponsors"))
         row_ (do span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "https://www.fpcomplete.com"] "FP Complete")
                                 " provides a number of tools and services etc."))
                  {-span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "https://www.fastly.com"] "Fastly")
                                 "'s Next Generation CDN provides low latency access for all of \
                                 \Haskell.org's downloads and highest traffic services, including \
                                 \the primary Hackage server, Haskell Platform downloads, and more." ))-})
         {-row_ (do span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "https://www.rackspace.com"] "Rackspace")
                                 " provides compute, storage, and networking resources, powering \
                                 \almost all of Haskell.org in several regions around the world."))
                  span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "https://www.status.io"] "Status.io")
                                 " powers "
                                 a_ [href_ "https://status.haskell.org"] "https://status.haskell.org"
                                 ", and lets us easily tell you \
                                 \when we broke something." )))-}
         {-row_ (do span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "http://www.galois.com"] "Galois")
                                 " provides infrastructure, funds, administrative resources and \
                                 \has historically hosted critical Haskell.org infrastructure, \
                                 \as well as helping the Haskell community at large with their work." ))
                  span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "https://www.dreamhost.com"] "DreamHost")
                                 " has teamed up to provide Haskell.org with redundant, scalable object-storage \
                                 \through their Dream Objects service." )))-}
         {-row_ (do span6_ [class_ "col-md-6"]
                         (p_ (do strong_ (a_ [href_ "http://www.webmon.com"] "Webmon")
                                 " provides monitoring and escalation for core haskell.org infrastructure." )))-}

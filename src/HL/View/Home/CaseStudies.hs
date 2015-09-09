{-# LANGUAGE OverloadedStrings #-}

-- | Case studies.

module HL.View.Home.CaseStudies where

import HL.View




-- | Case studies of businesses using haskell.
caseStudies :: Html ()
caseStudies =
  div_ [class_ "case-studies"]
       (container_
          (do h1_ "Case studies"
              p_ "Below are case studies of companies with hands-on experience with Haskell."
              row_ (do span6_ [class_ "col-md-6"]
                              (do h2_ "Sqream Technologies"
                                  p_ "Using Haskell at Sqream Technologies. At SQream, they use Haskell for a large part of their code. They use Haskell for the compiler, which takes SQL statements and turns them into low level instructions for the high performance CUDA runtime. They also use Haskell for rapid prototyping and for many auxiliary utilities."
                                  p_ (a_ [href_ "http://blog.sqreamtech.com/author/jake-wheat/"] "Read more →"))
                       span6_ [class_ "col-md-6"]
                              (do h2_ "The New York Times"
                                  p_ "New York Fashion Week takes place twice a year in February and September. It is here that designers from around the world showcase their collections and dictate trends for the coming season. To bring Fashion Week alive for their readers, developers at The Times used Haskell to create an interactive graphic called “Front Row to Fashion Week.”"
                                  p_ (a_ [href_ "https://app.doxiq.com/d/xx2Wq/NYTimes-pdf"] "Read more →")))
              row_ (do span6_ [class_ "col-md-6"]
                              (do h2_ "Scrive"
                                  p_ "Scrive (Stockholm, Sweden) provides e-signature solutions in high-volume transactional environments for a global clientele. Its solutions enable and expedite all types of transactions securely. It has grown rapidly with staff dispersed around the globe."
                                  p_ (a_ [href_ "https://app.doxiq.com/d/T3CxD/Scrive-pdf"] "Read more →"))
                       span6_ [class_ "col-md-6"]
                              (do h2_ "Silk"
                                  p_ "Founded in 2010, Silk (Amsterdam, Netherlands) has a structured content management application that offers users a sophisticated means to organize, visualize and associate their data, especially when there are links and tags within these data elements.  Once created, users can visualize, navigate, track and query the data.  One use is for PR agencies to organize their internal knowledge base as well as track patterns and trends of online content for their clients."
                                  p_ (a_ [href_ "https://app.doxiq.com/d/GvFrk/Silk-pdf"] "Read more →")))
              row_ (do span6_ [class_ "col-md-6"]
                              (do h2_ "Darpa Safe / Crash Program"
                                  p_ "The Defense Advanced Research Projects Agency (DARPA) is a USA government agency focused on Creating breakthrough technologies for national security. By making pivotal investments in new technology-driven ideas for the United States, DARPA imagines and makes possible new capabilities for overcoming the multifaceted threats and challenges that lie ahead."
                                  p_ (a_ [href_ "https://app.doxiq.com/d/L01Rs/Darpa-pdf"] "Read more →"))
                       span6_ [class_ "col-md-6"]
                              (do h2_ "Bump"
                                  p_ "Bump Technologies (Mountain View, CA), founded in 2009, launched\n\
                                      \its file-sharing app for smartphones in 2010 that skyrocketed in\n\
                                      \popularity overnight. It was the billionth downloaded app from Apple iTunes and became the 9th most popular free app there."
                                  p_ (a_ [href_ "https://app.doxiq.com/d/vHQfX/Bump-pdf"] "Read more →")))
              row_ (do span6_ [class_ "col-md-6"]
                              (do h2_ "Janrain"
                                  p_ "Janrain (Portland, OR) was founded in 2004 to solve the problem of managing the numerous username/password combinations consumers must keep track of in the increasingly online world. It was an early participant in the OpenID protocol project. From that work, its product expanded to help brands manage their online relationships."
                                  p_ (a_ [href_ "https://app.doxiq.com/d/m88cf/Janrain-pdf"] "Read more →"))
                       span6_ [class_ "col-md-6"]
                              (do h2_ "Netrium Project"
                                  p_ "The Netrium project created a system to support the definition and operational execution of financial and physical energy contracts. This\n\
                                      \helps trading desks control the operational risk associated with non-standard transactions. The implementation was based on the paper Adventures in Financial Engineering by Simon Peyton Jones and Jean-Marc Eber, with a range of extensions to allow for path-dependent contracts and support for physical commodities."
                                  p_ (a_ [href_ "https://app.doxiq.com/d/ystjb/Netrium-pdf"] "Read more →")))
              row_ (do span6_ [class_ "col-md-6"]
                              (do h2_ "Galois"
                                  p_ "Building a business with Haskell: Cryptol, HaLVM and Copilot. The talk describes three case studies where “functional thinking” helped shape the solution to the client’s problem, whether via types, semantics, abstractions or otherwise. "
                                  p_ (a_ [href_ "http://galois.com/blog/2010/12/building-a-business-with-haskell-case-studies-cryptol-halvm-and-copilot/"] "Read more →")))))

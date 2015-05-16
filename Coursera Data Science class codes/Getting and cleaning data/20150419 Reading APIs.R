myapp = oauth_app("interestspark",
                  key="v1e1v1vWFp2l1bDoGE6xDiqHQ",secret="sHv0OZioBa2Xi4I4jmwmCM1f9B4ubvMJ6tcCT7LZScnuaa8rXS")
sig = sign_oauth1.0(myapp,
                    token = "3183904713-9Ct7VXRJdAJvL1o5HILwRncG2RKSKGbpM6tWwbS",
                    token_secret = "iHYzXNfjWaZXzV47fgRI9XX8SUKlsZKRwZ8juAThD5ntt")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)
json1 = content(homeTL)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[1,1:4]
install.packages("rjson")
library(rjson)

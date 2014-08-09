{-# LANGUAGE MultiParamTypeClasses #-}

module OpenID
  ( getForwardUrl,
    authenticate
  ) where

import Control.Failure
import Network.HTTP.Conduit
import Snap.Core
import Web.Authenticate.OpenId

instance Failure AuthenticateException Snap
instance Failure HttpException Snap

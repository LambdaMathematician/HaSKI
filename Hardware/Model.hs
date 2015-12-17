{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Hardware.Model (SKI(S,K,I,T,L),Ptr(Ptr)) where

import CLaSH.Prelude

import Text.Printf (printf)

newtype Ptr = Ptr Int deriving (Eq, Ord, Enum)

instance Show Ptr where
    show (Ptr ptr) = printf "[*%08x]" ptr

data SKI = S | K | I | T Ptr Ptr | L Char deriving (Show, Eq)

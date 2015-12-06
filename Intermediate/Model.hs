{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Intermediate.Model (SKI(S,K,I,T,L),Ptr(Ptr)) where

newtype Ptr = Ptr Int deriving (Show, Eq, Ord, Enum)

data SKI = S | K | I | T Ptr Ptr | L Char deriving Show

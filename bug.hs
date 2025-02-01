{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.List (sort)

main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  line <- getLine
  let nums = map read (words line) :: [Int]
  let sortedNums = sort nums
  putStrLn $ "Sorted list: " ++ show sortedNums
  print $ sum sortedNums


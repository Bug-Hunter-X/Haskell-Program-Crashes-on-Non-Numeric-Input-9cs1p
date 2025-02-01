{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.List (sort)
import Text.Read (readMaybe)

main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces:"
  line <- getLine
  let nums = catMaybes $ map (readMaybe) (words line) :: [Int]
  let sortedNums = sort nums
  putStrLn $ "Sorted list: " ++ show sortedNums
  print $ sum sortedNums

catMaybes :: [Maybe a] -> [a]
catMaybes = foldr (
  (Just x) acc -> x : acc
  Nothing acc -> acc
  ) []

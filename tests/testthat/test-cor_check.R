test_that("multiplication works", {
  expect_equal(all(grepl("Pass", cor_check(mtcars$mpg,mtcars$cyl))), T)
  expect_equal(all(grepl("Pass", cor_check(mtcars$mpg,mtcars$drat))), T)
})


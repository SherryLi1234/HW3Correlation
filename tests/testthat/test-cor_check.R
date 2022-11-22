test_that("multiplication works", {
  expect_equal(all(grepl("Pass", cor_check(mtcars$mpg,mtcars$cyl))), T)
  expect_equal(all(grepl("Pass", cor_check(mtcars$mpg,mtcars$drat))), T)
  expect_equal(any(grepl("Pass", cor_check(c(1,2,3,"4",""),c(2,3,4))))==FALSE, FALSE)
})


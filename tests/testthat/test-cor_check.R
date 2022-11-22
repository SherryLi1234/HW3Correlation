test_that("multiplication works", {
  expect_equal(cor_check(mtcars$mpg,mtcars$cyl), T)
  expect_equal(cor_check(mtcars$mpg,mtcars$drat), T)
})

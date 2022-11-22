test_that("multiplication works", {
  expect_equal(cor_check(mtcars$mpg,mtcars$cyl), TRUE)
  expect_equal(cor_check(mtcars$mpg,mtcars$drat), TRUE)

})

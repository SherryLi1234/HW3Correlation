test_that("multiplication works", {
  expect_equal(cor_kendallB(mtcars$mpg,mtcars$cyl), -0.7953134)
  expect_equal(cor_kendallB(mtcars$mpg,mtcars$drat), 0.4645488)
})

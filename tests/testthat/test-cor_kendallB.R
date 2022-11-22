test_that("multiplication works", {
  expect_equal(cor_kendallB(mtcars$mpg,mtcars$cyl),
               cor(mtcars$mpg,mtcars$cyl,method="kendall"))
  expect_equal(cor_kendallB(mtcars$mpg,mtcars$drat),
               cor(mtcars$mpg,mtcars$drat,method="kendall"))
})

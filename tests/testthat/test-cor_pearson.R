test_that("cor_pearson works", {
  expect_equal(cor_pearson(mtcars$mpg,mtcars$cyl),
               cor(mtcars$mpg,mtcars$cyl,method="pearson"))
  expect_equal(cor_pearson(mtcars$mpg,mtcars$drat),
               cor(mtcars$mpg,mtcars$drat,method="pearson"))
})

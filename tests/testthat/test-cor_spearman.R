test_that("multiplication works", {
  expect_equal(cor_spearman(mtcars$mpg,mtcars$cyl),
               cor(mtcars$mpg,mtcars$cyl,method="spearman"))
  expect_equal(cor_spearman(mtcars$mpg,mtcars$drat),
               cor(mtcars$mpg,mtcars$drat,method="spearman"))
})

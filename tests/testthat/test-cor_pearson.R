test_that("cor_pearson works", {
  expect_equal(cor_pearson(mtcars$mpg,mtcars$cyl), -0.852162)
  expect_equal(cor_pearson(mtcars$mpg,mtcars$drat), 0.6811719)
})

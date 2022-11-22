test_that("multiplication works", {
  expect_equal(cor_spearman(mtcars$mpg,mtcars$cyl), -0.9108013)
  expect_equal(cor_spearman(mtcars$mpg,mtcars$drat), 0.6514555)
})

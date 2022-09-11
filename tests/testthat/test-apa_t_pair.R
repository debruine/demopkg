test_that("defaults", {
  x <- c(1,2,3,4,5)
  y <- c(2,3,2,5,6)

  result <- apa_t_pair(x, y)
  expected <- "A paired-samples t-test was conducted to compare the DV between level 1 (M = 3, SD = 1.6) and level 2 (M = 3.6, SD = 1.8). There was a non-significant difference; t(4) = -1.5, p = 0.208."
  expect_equal(result, expected)
})

test_that("defaults-sig", {
  x <- c(1,2,1,3,1)
  y <- c(5,3,2,5,6)

  result <- apa_t_pair(x, y)
  expected <- "A paired-samples t-test was conducted to compare the DV between level 1 (M = 1.6, SD = 0.9) and level 2 (M = 4.2, SD = 1.6). There was a significant difference; t(4) = -3.2, p = 0.033."
  expect_equal(result, expected)
})

test_that("non-defaults", {
  x <- c(1,2,1,3,1)
  y <- c(5,3,2,5,6)

  result <- apa_t_pair(x, y, dv = "the score", "Group A", "Group B")
  expected <- "A paired-samples t-test was conducted to compare the score between Group A (M = 1.6, SD = 0.9) and Group B (M = 4.2, SD = 1.6). There was a significant difference; t(4) = -3.2, p = 0.033."
  expect_equal(result, expected)
})

test_that("same x and y", {
  x <- c(1,2,1,4,1)
  y <- c(5,3,2,5,6)

  expect_warning( apa_t_pair(x, x) )
})

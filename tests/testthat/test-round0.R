test_that("trailing zeros", {
  expect_equal( round0(1, 0), "1")
  expect_equal( round0(1, 1), "1.0")
  expect_equal( round0(1, 2), "1.00")
  expect_equal( round0(1, 3), "1.000")
})

test_that("rounding", {
  expect_equal( round0(1.999, 0), "2")
  expect_equal( round0(1.999, 1), "2.0")
  expect_equal( round0(1.999, 2), "2.00")
  expect_equal( round0(1.999, 3), "1.999")
  expect_equal( round0(1.999, 4), "1.9990")
})

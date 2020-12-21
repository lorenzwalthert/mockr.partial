# test_that("multiplication works", {
#   g <- purrr::partial(plus, z = 3)
#   out <- mockr::with_mock(
#     plus = function(x, y, z) -1111,
#     apply_f(3, 3, g)
#   )
#   expect_equal(out, -1111)
# })
#
#
test_that("multiplication works", {
  contains_plus <- purrr::partial(x_times_two, x = 3) # contains a call to plus()
  out <- mockr::with_mock(
    plus = function(x, y) -1111,
    contains_plus(y = 2)
  )
  expect_equal(out, -1111)
})
#
# test_that("multiplication works", {
#   contains_plus <- purrr::partial(x_times_two, x = 3) # contains a call to plus()
#   out <- mockery::with_mock(
#     plus = function(x, y) -1111,
#     contains_plus(y = 2)
#   )
#   expect_equal(out, -1111)
# })

#
# test_that("multiplication works", {
#   g <- purrr::partial(plus, z = 3)
#   h <- g
#   out <- mockr::with_mock(
#     plus = function(x, y, z) -1111,
#     apply_f(3, 3, h)
#   )
#   expect_equal(out, -1111)
# })
#
# test_that("multiplication works", {
#   f <- function(x, y) {
#   plus(x, y, z = 3)
# }
#   mockery::stub(
#   apply_f, "plus", function(x, y) -1111
#   )
#   expect_equal(apply_f(3, 3, plus), -1111)
# })

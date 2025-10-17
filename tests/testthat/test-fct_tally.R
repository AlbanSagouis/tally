test_that("basic counting works", {
  test_results <- paste(letters, collapse = "") |> tally()

  expect_equal(26L, length(test_results))
  expect_equal(26L, sum(test_results))
})

test_that("tally basic counting works", {
  test_results <- tally(paste(letters, collapse = ""))

  expect_equal(26L, NROW(test_results))
  expect_equal(26L, sum(test_results$Freq))
})

test_that("tally returns a data.frame with Species and Freq columns", {
  test_results <- tally(paste(letters, collapse = ""))

  expect_s3_class(object = test_results, class = "data.frame")
  expect_setequal(
    object = colnames(test_results),
    expected = c("Species", "Freq")
  )
})

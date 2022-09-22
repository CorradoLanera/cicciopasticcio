test_that("import_data works", {
  # setup
  data_path <- get_input_data_path("farlocco.csv")

  # execution
  res <- import_data(data_path)

  # expectations
  expect_tibble(res)
  expect_silent(import_data(data_path))
})


test_that("relevant_computaiton works", {
  # setup
  db <- get_input_data_path("farlocco.csv") |>
    import_data()

  # execution
  res <- relevant_computation(db)

  # expectations
  expect_equal(res %% 2, 1)
})

test_that("preprocess works", {
  # expectations
  expect_tibble(preprocess(mtcars))
})

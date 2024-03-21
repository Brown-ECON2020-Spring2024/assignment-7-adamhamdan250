test_that("This is an example test", {
  a <- 2
  b <- 10
  expect_equal(a * b, 20)
})

test_that("testing gdp coefficient", {
  expect_equal(as.numeric(model$coefficients[2]), 0.00076, tolerance = 0.00001)
})

test_that("testing number of observations in data", {
  expect_equal(nrow(data), 1704)
})

test_that("data validation tests", {
  expect_unique(data = data, c("year", "country"))
  expect_range(data =  data, gdpPercap, 0, 1e6)
  expect_values(data = data, continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"))
})
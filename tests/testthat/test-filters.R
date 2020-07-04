
test_that("wkt_set_srid works", {
  expect_identical(wkt_set_srid(character(0), 1234), character(0))
  expect_identical(wkt_set_srid(NA_character_, 1234), NA_character_)
  expect_identical(
    wkt_set_srid("POINT (30 10)", 1234),
    "SRID=1234;POINT (30 10)"
  )

  expect_identical(
    wkt_set_srid("POINT (30 10)", c(1234, 5678)),
    c("SRID=1234;POINT (30 10)", "SRID=5678;POINT (30 10)")
  )

  expect_identical(
    wkt_set_srid(c("POINT (30 10)", "POINT (10 10)"), c(1234, 5678)),
    c("SRID=1234;POINT (30 10)", "SRID=5678;POINT (10 10)")
  )

  expect_identical(
    wkt_set_srid(c("POINT (30 10)", "POINT (10 10)"), c(1234)),
    c("SRID=1234;POINT (30 10)", "SRID=1234;POINT (10 10)")
  )
})

test_that("wkb_set_srid works", {
  expect_identical(wkb_set_srid(list(), 1234), list())
  expect_identical(wkb_set_srid(list(NULL), 1234), list(NULL))
  expect_identical(
    wkb_set_srid(as_wkb("POINT (30 10)"), 1234),
    unclass(as_wkb("SRID=1234;POINT (30 10)"))
  )
})

test_that("wksxp_set_srid works", {
  expect_identical(wksxp_set_srid(list(), 1234), list())
  expect_identical(wksxp_set_srid(list(NULL), 1234), list(NULL))
  expect_identical(
    wksxp_set_srid(as_wksxp("POINT (30 10)"), 1234),
    unclass(as_wksxp("SRID=1234;POINT (30 10)"))
  )
})

test_that("wkt_set_z works", {
  expect_identical(wkt_set_z(character(0), 1234), character(0))
  expect_identical(wkt_set_z(NA_character_, 1234), NA_character_)
  expect_identical(
    wkt_set_z("POINT (30 10)", 1234),
    "POINT Z (30 10 1234)"
  )

  expect_identical(
    wkt_set_z("POINT (30 10)", c(1234, 5678)),
    c("POINT Z (30 10 1234)", "POINT Z (30 10 5678)")
  )

  expect_identical(
    wkt_set_z(c("POINT (30 10)", "POINT (10 10)"), c(1234, 5678)),
    c("POINT Z (30 10 1234)", "POINT Z (10 10 5678)")
  )

  expect_identical(
    wkt_set_z(c("POINT (30 10)", "POINT (10 10)"), c(1234)),
    c("POINT Z (30 10 1234)", "POINT Z (10 10 1234)")
  )
})

test_that("wkb_set_z works", {
  expect_identical(wkb_set_z(list(), 1234), list())
  expect_identical(wkb_set_z(list(NULL), 1234), list(NULL))
  expect_identical(
    wkb_set_z(as_wkb("POINT (30 10)"), 1234),
    unclass(as_wkb("POINT Z (30 10 1234)"))
  )
})

test_that("wksxp_set_z works", {
  expect_identical(wksxp_set_z(list(), 1234), list())
  expect_identical(wksxp_set_z(list(NULL), 1234), list(NULL))
  expect_identical(
    wksxp_set_z(as_wksxp("POINT (30 10)"), 1234),
    unclass(as_wksxp("POINT Z (30 10 1234)"))
  )
})

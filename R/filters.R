
#' Modify well-known geometries
#'
#' @inheritParams wk::wkb_translate_wkt
#' @param srid An integer spatial reference identifier with a user-defined meaning.
#'   Use `NA` to unset this value.
#' @param z A Z value that will be assigned to every coordinate in each feature.
#'   Use `NA` to unset this value.
#'
#' @return An unclassed well-known vector with the same type
#'   as the input.
#' @export
#'
#' @examples
#' wkt_set_srid("POINT (30 10)", 1234)
#' wkt_set_z("POINT (30 10)", 1234)
#'
wkt_set_srid <- function(wkt, srid, precision = 16, trim = TRUE)  {
  recycled <- vctrs::vec_recycle_common(wkt, srid)
  cpp_wkt_set_srid(recycled[[1]], recycled[[2]], precision, trim)
}

#' @rdname wkt_set_srid
#' @export
wkb_set_srid <- function(wkb, srid) {
  recycled <- vctrs::vec_recycle_common(wkb, srid)
  cpp_wkb_set_srid(recycled[[1]], recycled[[2]], wk_platform_endian())
}

#' @rdname wkt_set_srid
#' @export
wksxp_set_srid <- function(wksxp, srid) {
  recycled <- vctrs::vec_recycle_common(wksxp, srid)
  cpp_wksxp_set_srid(recycled[[1]], recycled[[2]])
}

#' @rdname wkt_set_srid
#' @export
wkt_set_z <- function(wkt, z, precision = 16, trim = TRUE)  {
  recycled <- vctrs::vec_recycle_common(wkt, z)
  cpp_wkt_set_z(recycled[[1]], recycled[[2]], precision, trim)
}

#' @rdname wkt_set_srid
#' @export
wkb_set_z <- function(wkb, z) {
  recycled <- vctrs::vec_recycle_common(wkb, z)
  cpp_wkb_set_z(recycled[[1]], recycled[[2]], wk_platform_endian())
}

#' @rdname wkt_set_srid
#' @export
wksxp_set_z <- function(wksxp, z) {
  recycled <- vctrs::vec_recycle_common(wksxp, z)
  cpp_wksxp_set_z(recycled[[1]], recycled[[2]])
}

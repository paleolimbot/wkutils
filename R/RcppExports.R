# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

cpp_coords_point_translate_wkt <- function(x, y, z, m, precision, trim) {
    .Call(`_wkutils_cpp_coords_point_translate_wkt`, x, y, z, m, precision, trim)
}

cpp_coords_point_translate_wkb <- function(x, y, z, m, endian, bufferSize) {
    .Call(`_wkutils_cpp_coords_point_translate_wkb`, x, y, z, m, endian, bufferSize)
}

cpp_coords_linestring_translate_wkt <- function(x, y, z, m, featureId, precision, trim) {
    .Call(`_wkutils_cpp_coords_linestring_translate_wkt`, x, y, z, m, featureId, precision, trim)
}

cpp_coords_linestring_translate_wkb <- function(x, y, z, m, featureId, endian, bufferSize) {
    .Call(`_wkutils_cpp_coords_linestring_translate_wkb`, x, y, z, m, featureId, endian, bufferSize)
}

cpp_coords_polygon_translate_wkt <- function(x, y, z, m, featureId, ringId, precision, trim) {
    .Call(`_wkutils_cpp_coords_polygon_translate_wkt`, x, y, z, m, featureId, ringId, precision, trim)
}

cpp_coords_polygon_translate_wkb <- function(x, y, z, m, featureId, ringId, endian, bufferSize) {
    .Call(`_wkutils_cpp_coords_polygon_translate_wkb`, x, y, z, m, featureId, ringId, endian, bufferSize)
}

cpp_coords_wkb <- function(wkb, sepNA) {
    .Call(`_wkutils_cpp_coords_wkb`, wkb, sepNA)
}

cpp_coords_wkt <- function(wkt, sepNA) {
    .Call(`_wkutils_cpp_coords_wkt`, wkt, sepNA)
}

cpp_debug_wkb <- function(wkb) {
    invisible(.Call(`_wkutils_cpp_debug_wkb`, wkb))
}

cpp_debug_wkt <- function(input) {
    invisible(.Call(`_wkutils_cpp_debug_wkt`, input))
}

cpp_debug_wkt_streamer <- function(input) {
    invisible(.Call(`_wkutils_cpp_debug_wkt_streamer`, input))
}

cpp_wkt_set_srid <- function(wkt, srid, precision = 16L, trim = TRUE) {
    .Call(`_wkutils_cpp_wkt_set_srid`, wkt, srid, precision, trim)
}

cpp_wkb_set_srid <- function(wkb, srid, endian) {
    .Call(`_wkutils_cpp_wkb_set_srid`, wkb, srid, endian)
}

cpp_wkt_set_z <- function(wkt, z, precision = 16L, trim = TRUE) {
    .Call(`_wkutils_cpp_wkt_set_z`, wkt, z, precision, trim)
}

cpp_wkb_set_z <- function(wkb, z, endian) {
    .Call(`_wkutils_cpp_wkb_set_z`, wkb, z, endian)
}

cpp_wkt_transform <- function(wkt, transform, precision = 16L, trim = TRUE) {
    .Call(`_wkutils_cpp_wkt_transform`, wkt, transform, precision, trim)
}

cpp_wkb_transform <- function(wkb, transform, endian) {
    .Call(`_wkutils_cpp_wkb_transform`, wkb, transform, endian)
}

cpp_wkt_has_non_finite <- function(wkt) {
    .Call(`_wkutils_cpp_wkt_has_non_finite`, wkt)
}

cpp_wkb_has_non_finite <- function(wkb) {
    .Call(`_wkutils_cpp_wkb_has_non_finite`, wkb)
}

cpp_wkt_has_missing <- function(wkt) {
    .Call(`_wkutils_cpp_wkt_has_missing`, wkt)
}

cpp_wkb_has_missing <- function(wkb) {
    .Call(`_wkutils_cpp_wkb_has_missing`, wkb)
}

cpp_meta_wkb <- function(wkb, recursive) {
    .Call(`_wkutils_cpp_meta_wkb`, wkb, recursive)
}

cpp_meta_wkt <- function(wkt, recursive) {
    .Call(`_wkutils_cpp_meta_wkt`, wkt, recursive)
}

cpp_meta_wkt_streamer <- function(wkt, recursive) {
    .Call(`_wkutils_cpp_meta_wkt_streamer`, wkt, recursive)
}

cpp_ranges_wkb <- function(wkb, naRm, onlyFinite) {
    .Call(`_wkutils_cpp_ranges_wkb`, wkb, naRm, onlyFinite)
}

cpp_ranges_wkt <- function(wkt, naRm, onlyFinite) {
    .Call(`_wkutils_cpp_ranges_wkt`, wkt, naRm, onlyFinite)
}

cpp_feature_ranges_wkb <- function(wkb, naRm, onlyFinite) {
    .Call(`_wkutils_cpp_feature_ranges_wkb`, wkb, naRm, onlyFinite)
}

cpp_feature_ranges_wkt <- function(wkt, naRm, onlyFinite) {
    .Call(`_wkutils_cpp_feature_ranges_wkt`, wkt, naRm, onlyFinite)
}

cpp_wkt_unnest <- function(wkt, keepEmpty, keepMulti, maxUnnestDepth) {
    .Call(`_wkutils_cpp_wkt_unnest`, wkt, keepEmpty, keepMulti, maxUnnestDepth)
}

cpp_wkb_unnest <- function(wkb, keepEmpty, keepMulti, maxUnnestDepth, endian) {
    .Call(`_wkutils_cpp_wkb_unnest`, wkb, keepEmpty, keepMulti, maxUnnestDepth, endian)
}


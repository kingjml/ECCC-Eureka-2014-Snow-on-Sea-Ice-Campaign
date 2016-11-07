#ECCC 2014 Snow on Sea Ice Campaign

## Synopsis
During March and April of 2014, [ECCC](http://ec.gc.ca/) completed a coordinated field-based campaign to evaluate radar-derived estimates of snow depth on sea from [NASA’s Operation IceBridge](https://www.nasa.gov/mission_pages/icebridge/index.html). The dataset housed in this repository contains measurements of snow depth, snow density, sea ice thickness, and sea ice freeboard collected near Eureka, Nunavut, Canada on first year sea ice between 24 March 2014 and 02 April 2014. Measurements are coincident with a NASA Operation IceBridge mission flown on 25 March 2014 ([see mission report for details](https://espo.nasa.gov/oib/flight_reports/P-3_Orion_03_25_14)). Data contained in the repository was used in [King, et. al., 2015](http://onlinelibrary.wiley.com/doi/10.1002/2015GL066389/full) to evaluate the [IceBridge Sea Ice Freeboard, Snow Depth, and Thickness Quick Look](https://nsidc.org/data/docs/daac/icebridge/evaluation_products/sea-ice-freeboard-snowdepth-thickness-quicklook-index.html) product.

## Format
The dataset is provided in HDF5 format and can be read with common tools including [HDFView](https://support.hdfgroup.org/products/java/index.html), [h5py](http://www.h5py.org/), and [rhdf5](https://bioconductor.org/packages/release/bioc/html/rhdf5.html).

Measurements are organized by instrument and experiment type. The largest set of measurements were collected along a 56 km transect, identified by the site name "transect" and site ID "1". Three additional sites identified as "Grid1", "Grid2:, and "Grid3" provide intensive local scale measurements characterized by strong differences in ice surface topography.

Unit type attributes have been provided where appropriate. 

All coordinates are stored as float lat/lon values with WGS 84 as the CRS.

## Contact
Josh King, Research Scientist, joshua.king[at]canada.ca

## License
This dataset is licensed under the [Open Government License of Canada](http://open.canada.ca/en/open-government-licence-canada)
and is subject to the [Copyright Act of Canada](http://laws-lois.justice.gc.ca/eng/acts/C-42/index.html).

#ECCC 2014 Snow on Sea Ice Campaign

## Synopsis
During March and April of 2014, [ECCC](http://ec.gc.ca/) completed a coordinated field-based campaign to evaluate radar-derived estimates of snow depth on sea from [NASA’s Operation IceBridge](https://www.nasa.gov/mission_pages/icebridge/index.html). The dataset housed in this repository contains measurements of snow depth, snow density, sea ice thickness, and sea ice freeboard collected near Eureka, Nunavut, Canada on first year sea ice between 24 March 2014 and 02 April 2014. Measurements are coincident with a NASA Operation IceBridge mission flown on 25 March 2014 ([see mission report for details](https://espo.nasa.gov/oib/flight_reports/P-3_Orion_03_25_14)). Data contained in the repository was used in [King, et. al., 2015](http://onlinelibrary.wiley.com/doi/10.1002/2015GL066389/full) to evaluate the [IceBridge Sea Ice Freeboard, Snow Depth, and Thickness Quick Look](https://nsidc.org/data/docs/daac/icebridge/evaluation_products/sea-ice-freeboard-snowdepth-thickness-quicklook-index.html) product.

## Format
The full campaign dataset is provided as a single file in HDF5 format which be read with common tools including [HDFView](https://support.hdfgroup.org/products/java/index.html), [h5py](http://www.h5py.org/), and [rhdf5](https://bioconductor.org/packages/release/bioc/html/rhdf5.html). Example code using rhdf5 in R has been provided within the repository.

Measurements are organized by instrument and experiment type. The largest set of measurements were collected along a 56 km transect, identified by the `site_name` `transect` and a `site_id` of `1`. Three additional sites identified as `Grid1`, `Grid2`, and `Grid3` provide intensive local scale measurements characterized by strong differences in ice surface topography.

Unit type attributes have been provided where appropriate. 

All coordinates are stored as float lat/lon values with WGS 84 as the CRS.

###Gridded data example
![Grid Example](https://github.com/kingjml/ECCC-Eureka-2014-Snow-on-Sea-Ice-Campaign/blob/master/grid_example.jpg?raw=true)

###Transect data example
![Transect Example](https://github.com/kingjml/ECCC-Eureka-2014-Snow-on-Sea-Ice-Campaign/blob/master/transect_example.jpg?raw=true)

#Measurements
Three groups define the measurement types identified as *auger*, *esc30*, and *magnaprobe*. 

###Auger
Measurements within the `auger` group (`/eureka_data/auger`) were collected at points where a 15 cm diameter auger was used to drill through the full sea ice thickness. Snow depth (`/eureka_data/auger/snow_depth`) was measure to the nearest 0.01 m above each auger location using an avalance probe. Ice thickness(`/eureka_data/auger/ice_thickness`) was measured between the snow-ice interface and ice draft to the nearest cm with a probe and hook. Freeboard (`/eureka_data/auger/ice_freeboard`) was measured between the snow-ice interface and water level to the nearest cm using an avalanche probe. Coordinate information provided within this sub-group was collected with a handheld Garmin GPS unit (~3.0 m accuracy).

Note that NaN values for ice thickness indicate that the auger was not able to penetrate the full volume. If a value is desired at these points it should be assumed that ice thickness is greater than 2.3 m.

###ESC-30
Measurements within the `esc30` group (`/eureka_data/esc30`) were collected at points where a 30 cm diameter snow corer was used to extract samples. Measurements were collected in pairs and as a result two values are available for most dataset items. Snow depth (`/eureka_data/esc30/snow_depth`) was measured using . Extracted samples were weighed in the field with a calibrated hanging scale to produce the */eureka_data/esc30/mass* dataset. Snow density (`/eureka_data/esc30/snow_rho`) is calculated as 
`mass / (29.225 * snow_depth)` where `29.225` is the diameter of the ESC-30. Coordinate information provided within this sub-group was collected with a handheld Garmin GPS unit (~3.0 m accuracy). 

Note that disagreement between co-located sample pairs is not an indicator of operator error!

###Magnaprobe
All measurements contained within the `magnaprobe` group (`/eureka_data/magnaprobe`) were collected with [GPS-enabled Snow Hydro Magnaprobe](http://www.snowhydro.com/products/column2.html) units. Point measruements of snow depth are provided in the dataset `/eureka_data/magnaprobe/snow_depth`. Measurements have been rounded to the nearest mm and are provided in m units.

## Contact
Josh King, Research Scientist, joshua.king[at]canada.ca

## License
This dataset is licensed under the [Open Government License of Canada](http://open.canada.ca/en/open-government-licence-canada)
and is subject to the [Copyright Act of Canada](http://laws-lois.justice.gc.ca/eng/acts/C-42/index.html). Additional infomration can be found at the [Government of Canada's Open Government portal](http://open.canada.ca)

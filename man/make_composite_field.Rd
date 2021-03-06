% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregate.R
\name{make_composite_field}
\alias{make_composite_field}
\title{Create a composite metadata field by merging existing data.}
\usage{
make_composite_field(merge_fields)
}
\arguments{
\item{merge_fields}{Column names in targets data to be included in the new composite column. Should be provided as a set
of strings.  I.E. c("field1","field2").}
}
\value{
This function returns target data containing the newly created composite field.
}
\description{
This function, given target metadata, will create a new composite column based on two or more existing columns
in the target data.  The new field will be named based on the merged fields and will be delimited using the "_" character.
Requires that target data has been prepared with prep_targets().
}
\examples{
\dontrun{

myCounts <- prep_counts(count_input="master_count_data.txt", delim="t")
myTargets <- prep_targets(target_input="master_count_data.txt", delim="t")

#Create a composite field based on "treatment" and "time" fields.
myTargets <- make_composite_field(targets=myTargets,
                                  merge_fields=c("treatment","time"))


#Create a composite field based on "treatment", "time", and "patientID" fields.
myTargets <- make_composite_field(targets=myTargets,
                                  merge_fields=c("treatment","time","patientID"))


}
}
\seealso{
\code{\link{prep_targets}}
}
\keyword{aggregate}
\keyword{metadata}

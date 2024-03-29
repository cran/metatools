% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/labels.R
\name{set_variable_labels}
\alias{set_variable_labels}
\title{Apply labels to a data frame using a metacore object}
\usage{
set_variable_labels(data, metacore, dataset_name = NULL)
}
\arguments{
\item{data}{A dataframe or tibble upon which labels will be applied}

\item{metacore}{metacore object that contains the specifications for the
dataset of interest.}

\item{dataset_name}{Optional string to specify the dataset. This is only
needed if the metacore object provided hasn't already been subsetted.}
}
\value{
Dataframe with labels applied
}
\description{
This function leverages metadata available in a metacore object to apply
labels to a data frame.
}
\examples{

mc <- metacore::spec_to_metacore(
        metacore::metacore_example("p21_mock.xlsx"),
        quiet=TRUE
        )
dm <- haven::read_xpt(metatools_example("dm.xpt"))
set_variable_labels(dm, mc, dataset_name = "DM")
}

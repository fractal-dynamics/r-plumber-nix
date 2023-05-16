library(jsonlite)
data <- fromJSON(file = "~/Downloads/amCharts.json")
data <- read_json("~/Downloads/amCharts.json")
data
dataframe <- as.data.frame(data)
dataframe
print(colnames(dataframe))
data frame
dataframe
dataframe[1]
dataframe[2]
dataframe[3]
# Remove all column names
colnames(dataframe) <- NULL
dataframe
dataframe
library(reshape2)
library(reshape2)
reformatted <- melt(dataframe)
print(reformatted)
reformatted <- melt(dataframe)
# Create a new dataframe with two columns for dates and values
new_dataframe <- data.frame(
  Date = c(dataframe[, seq(1, ncol(dataframe), by = 2)]),
  Value = c(dataframe[, seq(2, ncol(dataframe), by = 2)])
)
# Print the reformatted dataframe
print(new_dataframe)
print(new_dataframe)
dataframe
# Add a new column for sequential values
dataframe$ID <- seq_len(nrow(dataframe))
# Print the updated dataframe
print(dataframe)
dataframe
seq_len(nrow(dataframe))
seq_len(dataframe)
len(dataframe)
dataframe
dataframe <- as.data.frame(data)
dataframe
# Load the reshape2 package
library(reshape2)
# Transform the dataframe
new_dataframe <- melt(dataframe, measure.vars = c("date.1482", "value.1482", "date.1483", "value.1483", ...))
# Rename the columns
colnames(new_dataframe) <- c("Date", "Value")
# Add sequential numbering to the rows
new_dataframe$ID <- seq_len(nrow(new_dataframe))
# Reorder the columns
new_dataframe <- new_dataframe[, c("ID", "Date", "Value")]
# Print the updated dataframe
print(new_dataframe)
print(new_dataframe)
# Load the reshape2 package
library(reshape2)
# Transform the dataframe
new_dataframe <- melt(dataframe, measure.vars = c("date.1482", "value.1482", "date.1483", "value.1483", ...))
# Rename the columns
colnames(new_dataframe) <- c("ID", "Date", "Value")
# Remove the "ID" column
new_dataframe$ID <- NULL
# Print the updated dataframe
print(new_dataframe)
# Load the reshape2 package
library(reshape2)
# Transform the dataframe
new_dataframe <- melt(dataframe, measure.vars = seq(1, ncol(dataframe), by = 2))
# Rename the columns
colnames(new_dataframe) <- c("Date", "Value")
# Print the updated dataframe
print(new_dataframe)
print(new_dataframe)
dataframe
data.frame()
data
new_dataframe <- data.frame()
original_dataframe = dataframe
# Create an empty dataframe to store the transformed data
new_dataframe <- data.frame()
# Iterate through the original dataframe and extract date-value pairs
for (i in seq(1, ncol(original_dataframe), 2)) {
  date_column <- original_dataframe[, i]
  value_column <- original_dataframe[, i + 1]
  new_dataframe <- cbind(new_dataframe, date_column, value_column)
}
# Remove the first row (header row)
new_dataframe <- new_dataframe[-1, ]
# Rename the columns
column_names <- paste0(c("Date.", "Value."), seq(0, ncol(new_dataframe)/2 - 1))
colnames(new_dataframe) <- column_names
# Reset the row names
row.names(new_dataframe) <- NULL
# Print the new dataframe
print(new_dataframe)
original_dataframe
# Create an empty dataframe to store the transformed data
new_dataframe <- data.frame()
# Iterate through the original dataframe and extract date-value pairs
for (i in seq(1, ncol(original_dataframe), 2)) {
  date_column <- original_dataframe[, i]
  value_column <- original_dataframe[, i + 1]
  new_dataframe <- cbind(new_dataframe, date_column, value_column)
}
# Remove the first row (header row)
new_dataframe <- new_dataframe[-1, ]
# Rename the columns
column_names <- paste0(c("Date.", "Value."), seq(0, ncol(new_dataframe)/2 - 1))
colnames(new_dataframe) <- column_names
# Reset the row names
row.names(new_dataframe) <- NULL
# Print the new dataframe
print(new_dataframe)
print(new_dataframe)
original_dataframe
original_dataframe =  data
original_dataframe
# Create an empty dataframe to store the transformed data
new_dataframe <- data.frame()
# Iterate through the original dataframe and extract date-value pairs
for (i in seq(1, ncol(original_dataframe), 2)) {
  date_column <- original_dataframe[, i]
  value_column <- original_dataframe[, i + 1]
  new_dataframe <- cbind(new_dataframe, date_column, value_column)
}
# Remove the first row (header row)
new_dataframe <- new_dataframe[-1, ]
# Rename the columns
column_names <- paste0(c("Date.", "Value."), seq(0, ncol(new_dataframe)/2 - 1))
colnames(new_dataframe) <- column_names
# Reset the row names
row.names(new_dataframe) <- NULL
# Print the new dataframe
print(new_dataframe)
library(jsonlite)
myjson <- data
jsondata <- fromJSON(file = "~/Downloads/amCharts.json")
jsondata <- fromJSON("~/Downloads/amCharts.json")
jsondata
df <- as.data.frame(data)
df
df <- as.data.frame(jsondata)
df
head(df)
colnames(df) <- c("new_date", "new_value")
head(df)
colnames(df) <- c("ds", "y")
head(df)
library(prophet)
m <- prophet(df)
# Assuming your dataframe is named "df" and the date column is named "ds"
df$ds <- format(as.POSIXct(df$ds, format = "%Y-%m-%dT%H:%M:%OS"), "%Y-%m-%d %H:%M:%S")
df
m <- prophet(df)
df'
df
df <- as.data.frame(jsondata)
colnames(df) <- c("ds", "y")
m <- prophet(df)
# Assuming your dataframe is named "df"
df$ds <- as.Date(df$ds, format = "%Y-%m-%dT%H:%M:%OSZ")
df
m <- prophet(df)
m <- prophet(df)
any(is.na(df$y))
class(df$y)
df$y <- as.numeric(df$y)
m <- prophet(df)
future <- make_future_dataframe(m, periods = 365)
tail(future)
forecast <- predict(m, future)
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')])
plot(m, forecast)
prophet_plot_components(m, forecast)
plot(m, forecast)
plot(m, forecast, xlim = c(as.Date("2023-01-01"), as.Date("2023-12-31")))
plot(m, forecast, xlim = c(as.Date("2023-01-01"), as.Date("2023-12-31")))
# Assuming your range of interest is from "start_date" to "end_date"
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")
# Filter the forecast data within the range
forecast_filtered <- forecast[forecast$ds >= start_date & forecast$ds <= end_date, ]
# Plot the filtered forecast
plot(m, forecast_filtered)
start_date <- as.Date("2023-05-01")
end_date <- as.Date("2023-12-31")
forecast_filtered <- forecast[forecast$ds >= start_date & forecast$ds <= end_date, ]
plot(m, forecast)
forecast
m
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')])
forecast
future
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')] n = 100)
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')], n = 100)
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')], n = 400)
prophet_plot_components(m, forecast)
plot(m, forecast)
prophet_plot_components(m, forecast)
savehistory("silverprice.R")

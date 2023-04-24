# fun.R

library(leontief)
library(kableExtra)
library(knitr)
library(kableExtra)
library(IRdisplay)
library(jsonlite)
library(plotly)
#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg="") {
  list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @serializer png
#* @get /plot
function() {
  rand <- rnorm(100)
  hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a, b) {
  as.numeric(a) + as.numeric(b)
}

#* Simulate leontief I-O model
#* @get /leontief

function() {
    # X <- transaction_matrix
    # w <- wage_demand_matrix[, "wage"]
    # c <- wage_demand_matrix[, "household_consumption"]
    # d <- wage_demand_matrix[, "final_total_demand"]
    # e <- employment_matrix[, "employees"]
    # A <- input_requirement(X, d)
    # A_aug <- augmented_input_requirement(X,w,c,d)
    # rownames(A_aug) <- c(rownames(X), "wage_over_demand")
    # colnames(A_aug) <- c(rownames(X), "consumption_over_demand")
    # kable(A_aug,)
    # X <- transaction_matrix
    # w <- wage_demand_matrix[, "wage"]
    # c <- wage_demand_matrix[, "household_consumption"]
    # d <- wage_demand_matrix[, "final_total_demand"]
    # e <- employment_matrix[, "employees"]
    # A <- input_requirement(X, d)
    # A_aug <- augmented_input_requirement(X,w,c,d)
    # rownames(A_aug) <- c(rownames(X), "wage_over_demand")
    # colnames(A_aug) <- c(rownames(X), "consumption_over_demand")

    # # Create the Sankey diagram
    # plot_ly(
    # type = "sankey",
    # arrangement = "snap",
    # node = list(
    #     label = colnames(A_aug),
    #     pad = 150,
    #     thickness = 20,
    #     line = list(color = "black", width = 0.5)
    # ),
    # link = list(
    #     source = rep(1:ncol(A_aug)-1, each = ncol(A_aug)-1),
    #     target = rep(2:ncol(A_aug), ncol(A_aug)-1),
    #     value = as.vector(A_aug[-ncol(A_aug), -ncol(A_aug)])
    # ),
    # height = 700,
    # width = 1300
    # )

    X <- transaction_matrix
    w <- wage_demand_matrix[, "wage"]
    c <- wage_demand_matrix[, "household_consumption"]
    d <- wage_demand_matrix[, "final_total_demand"]
    e <- employment_matrix[, "employees"]
    A <- input_requirement(X, d)
    A_aug <- augmented_input_requirement(X, w, c, d)
    rownames(A_aug) <- c(rownames(X), "wage_over_demand")
    colnames(A_aug) <- c(rownames(X), "consumption_over_demand")

    # Convert the table to a data frame and add row names as a column
    df <- data.frame(matrix(unlist(A_aug), nrow=length(rownames(A_aug)), byrow=TRUE))
    df$names <- rownames(A_aug)
    colnames(df) <- c(colnames(A_aug), "names")

    # Convert the data frame to a JSON object with row names
    json <- toJSON(split(df[, -ncol(df)], 1:nrow(df)), auto_unbox = TRUE)

    # Return the JSON object as the response
    return(json)
}

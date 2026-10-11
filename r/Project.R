View(asthma_ed_visit_rates_2019)
> # Load necessary libraries
  >      library(ggplot2)
>  library(dplyr)
>  library(tidyr)
> 
  >      # Example dataset
  >      data <- data.frame(
    +              Geography = c("Area 1", "Area 2", "Area 3", "Area 4", "Area 5"),
    +              Rate = c(8.5, 6.7, 9.0, 5.2, 7.3),
    +              LGHC_Target_Rate = c(7.0, 6.0, 8.0, 5.0, 6.5)
    +          )
  >     
    >          # Reshape the data into a long format
    >          data_long <- data %>%
      +                  pivot_longer(cols = c(Rate, LGHC_Target_Rate),
                                      +                                                 names_to = "Rates_Type",
                                      +                                                 values_to = "Rate")
    >         
      >              # View the reshaped data
      >              print(data_long)
    # Visualization: Actual vs Target Rates
    >              ggplot(data_long, aes(x = Geography, y = Rate, fill = Rates_Type)) +
      +                  geom_bar(stat = "identity", position = "dodge") +
      +                  labs(
        +                          title = "Comparison of Actual and Target Rates of Asthma ED Visits",
        +                          x = "Geography",
        +                          y = "Rate",
        +                          fill = "Rates Type"
        +                    )  +theme_minimal()
# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Data for the three carriers
spring_data <- data.frame(
  Plan = c("40GB", "24GB", "12GB", "6GB", "3GB", "1GB"),
  Cost = c(100, 80, 60, 45, 30, 20),
  Carrier = "Spring"
)

att_data <- data.frame(
  Plan = c("30GB", "25GB", "16GB", "10GB", "6GB", "3GB", "1GB"),
  Cost = c(135, 110, 90, 80, 60, 40, 30),
  Carrier = "AT&T"
)

verizon_data <- data.frame(
  Plan = c("24GB", "16GB", "12GB", "8GB", "4GB", "2GB"),
  Cost = c(110, 90, 80, 70, 50, 35),
  Carrier = "Verizon"
)

# Combine data for all carriers
all_data <- rbind(spring_data, att_data, verizon_data)

# Create a bar plot
ggplot(all_data, aes(x = Plan, y = Cost, fill = Carrier)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Wireless Carrier Comparison",
       x = "Data Plan",
       y = "Cost ($)") +
  scale_fill_manual(values = c("Spring" = "yellow", "AT&T" = "blue", "Verizon" = "red")) +
  theme_minimal()

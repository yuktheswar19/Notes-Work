library(readxl)
library(data.table)
library(tidyverse)
library(lubridate)

hotel_bookings <- read_csv("/media/yuk/HOLLOW/Datasets/hotel_bookings.csv")

dim(hotel_bookings)

# To glimpse the table
glimpse(hotel_bookings)

# To  get all the variable names
names(hotel_bookings)

# Major number of hotels being booked 
table(hotel_bookings$hotel)


attach(hotel_bookings)


# To find the majority of the customer type 

hotel_bookings %>%
  select(customer_type)%>%
  count(customer_type)%>%
  arrange(desc(n))%>%
  view()

barplot(sort(table(customer_type), decreasing = TRUE))


# To check if numerical data has any null values

for (col_name in names(hotel_bookings)) {
  if (is.numeric(hotel_bookings[[col_name]])) {
    na_count <- sum(is.na(hotel_bookings[[col_name]]))
    
  }
}

na_table <- data.frame(
  Column = names(na_counts),
  NA_Count = as.vector(na_counts)
)

View(na_table) # Creating a table and viewing for null values


#Analyzing the lead_time column to understand Bookings in advance
summary(lead_time)
hist(lead_time)


# FACTORING 

cat_list <- list("customer_type", "reservation_status", "deposit_type", "distribution_channel","is_canceled")


for (item in cat_list){
  if( item %in% colnames(hotel_bookings)){     #To understand the columns and their categories 
    print(unique(hotel_bookings[[item]]))
  }
}


for (item in cat_list){
  if( item %in% colnames(hotel_bookings)){
    hotel_bookings[[item]] <- factor(hotel_bookings[[item]])  # Factoring the required columns
    print(levels(hotel_bookings[[item]]))
  }
}

# hierarchy required conversion 
hotel_bookings$reservation_status <- factor((hotel_bookings$reservation_status),
                                            levels = c("No-Show", "Canceled", "Check-Out"),
                                            ordered = TRUE)

hotel_bookings$deposit_type <- factor((hotel_bookings$deposit_type),
                                            levels = c("No Deposit", "Refundable", "Non Refund"),
                                            ordered = TRUE)

levels(hotel_bookings$reservation_status)
levels(hotel_bookings$deposit_type)

View(hotel_bookings)

table(hotel_bookings$reservation_status)

# Separating the Dates 
hotel_bookings = hotel_bookings %>%
                  mutate(Year = year(reservation_status_date),
                         Month = month(reservation_status_date),
                         Day = day(reservation_status_date))

view(hotel_bookings)

table(hotel_bookings$Year)
table(hotel_bookings$Month)


#Visualization 

ggplot(hotel_bookings, aes(x = factor(arrival_date_year), fill = hotel)) +
  geom_bar(position = "dodge") +
  labs(
    title = "Bookings by Hotel Type Across Years",
    x     = "Arrival Year",
    y     = "Number of Bookings",
    fill  = "Hotel Type"
  ) +
  theme_minimal()





# Arrival time and cancellation time 

ggplot(hotel_bookings, aes(x = arrival_date_month, y = lead_time, color = factor(is_canceled))) +
  geom_boxplot() +
  labs(
    title = "Lead Time by Arrival Month and Cancellation Status",
    x = "Arrival Month",
    y = "Lead Time (days)",
    color = "Canceled"
  ) +
  theme_minimal()


# Comparing customers to countries

table(hotel_bookings$country)


pop_country <- c() 

for (country in unique(hotel_bookings$country)) {
  count <- sum(hotel_bookings$country == country)
  if (count > 500) {
    pop_country <- c(pop_country, country)
  }
}

print(pop_country)

hotel_pop <- hotel_bookings[hotel_bookings$country %in% pop_country, ]

ggplot(hotel_pop, aes(x = country, fill = customer_type)) +
  geom_bar(position = "dodge") +
  labs(title = "Customer Type Distribution by Country",
       x = "Country",
       y = "Count",
       fill = "Customer Type") +
  theme_minimal()



# Boxplot of cancellation by days

hotel_bookings %>%
  ggplot(aes(x = factor(is_canceled), y = lead_time)) +
  geom_boxplot() +
  scale_x_discrete(labels= c("No","Yes")) +
  labs(
    x     = "Canceled?",
    y     = "Lead Time (days)",
    title = "Lead Time by Cancellation Status"
  )



# Repeated guests based on market segment

ggplot(hotel_bookings, aes(x = market_segment, fill = as.factor(is_repeated_guest))) +
  geom_bar(position = "dodge") +
  labs(
    title = "Repeated Guest Distribution by Market Segment",
    x = "Market Segment",
    y = "Number of Bookings",
    fill = "Is Repeated Guest"
  ) +
  theme_minimal()



# Repeated customers types

ggplot(hotel_bookings, aes(x = customer_type, fill = as.factor(is_repeated_guest))) +
  geom_bar(position = "dodge") +
  labs(
    title = "Repeated Cutomer Distribution by Customer_Type",
    x = "customer_type",
    y = "is_repeated_guest",
    fill = "Is Repeated Guest"
  ) +
  theme_minimal()




adr_summary <- hotel_bookings %>%
  group_by(customer_type, is_repeated_guest) %>%
  summarise(mean_adr = mean(adr, na.rm = TRUE), .groups = "drop")



ggplot(adr_summary, aes(x = customer_type, y = mean_adr, group = is_repeated_guest, color = as.factor(is_repeated_guest))) +
  geom_line(size = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Mean ADR by Customer Type and Repeated Guest",
    x = "Customer Type",
    y = "Mean ADR",
    color = "Is Repeated Guest"
  ) +
  theme_minimal()






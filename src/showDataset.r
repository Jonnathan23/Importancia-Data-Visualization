install.packages("datasauRus")

library(datasauRus)

# Filtrar solo el dataset 'circle'
circle_data <- subset(datasaurus_dozen, dataset == "circle")

# Mostrar las primeras filas
head(circle_data, 10)
# Data visualization
ggplot(circle_data, aes(x = x, y = y)) +
  geom_point(color = "tomato", size = 2) +
  theme_minimal() +
  coord_equal() + 
  labs(
    title = "Dataset: Circle",    
    x = "Eje X",
    y = "Eje Y"
  )


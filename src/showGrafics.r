library(datasauRus)
library(ggplot2)

# Filtrar el dataset de dino
circle_data <- subset(datasaurus_dozen, dataset == "circle")
head(circle_data)

# Regresión lineal
modelo_lineal <- lm(y ~ x, data = circle_data)
summary(modelo_lineal)



# Data visualization
ggplot(circle_data, aes(x = x, y = y)) +
  geom_point(color = "skyblue", size = 2) +
  geom_smooth(method = "lm", se = TRUE, color = "red", linetype = "dashed") +
  coord_equal() +
  theme_minimal() +
  labs(
    title = "Regresión lineal sobre el dataset 'circle'",
    subtitle = "La línea roja muestra un ajuste lineal (claramente inadecuado)",
    x = "Eje X",
    y = "Eje Y"
  )

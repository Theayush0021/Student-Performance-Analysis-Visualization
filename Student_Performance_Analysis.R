# MINI PROJECT: STUDENT PERFORMANCE ANALYSIS

# Step 1: Load library
library(ggplot2)

# Step 2: Create student dataset
students <- data.frame(
  Name = c("Ayush", "Rahul", "Priya", "Aman", "Neha",
           "Riya", "Vikas", "Anjali"),
  
  Study_Hours = c(2, 4, 6, 3, 7, 5, 8, 4),
  
  Marks = c(45, 60, 85, 55, 90, 75, 95, 65),
  
  Subject = c("Math", "Science", "Math", "Science",
              "Math", "Science", "Math", "Science")
)

# Step 3: View dataset
print(students)

# Step 4: Basic visualization

# Scatter plot
plot(students$Study_Hours, students$Marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     col = "blue",
     pch = 19)

# Bar chart
barplot(students$Marks,
        names.arg = students$Name,
        main = "Student Marks",
        xlab = "Students",
        ylab = "Marks")

# Histogram
hist(students$Marks,
     main = "Marks Distribution",
     xlab = "Marks",
     col = "skyblue")


# Step 5: ggplot2 visualization

# Bar chart using geom_col()
p1 <- ggplot(students, aes(x = Name, y = Marks)) +
  geom_col(fill = "steelblue") +
  labs(
    title = "Student Marks Comparison",
    x = "Student Name",
    y = "Marks"
  ) +
  theme_minimal()

print(p1)


# Scatter plot using geom_point()
p2 <- ggplot(students,
             aes(x = Study_Hours, y = Marks)) +
  geom_point(color = "blue", size = 3) +
  ggtitle("Study Hours vs Student Marks") +
  labs(
    x = "Study Hours",
    y = "Marks"
  ) +
  theme_minimal()

print(p2)


# Line graph using geom_line()
p3 <- ggplot(students,
             aes(x = Study_Hours, y = Marks)) +
  geom_line(color = "red") +
  geom_point(size = 3) +
  labs(
    title = "Study Hours and Marks Trend",
    x = "Study Hours",
    y = "Marks"
  ) +
  theme_minimal()

print(p3)


# Step 6: Multiple panels using facet_wrap()
p4 <- ggplot(students,
             aes(x = Study_Hours, y = Marks)) +
  geom_point(color = "darkgreen", size = 3) +
  facet_wrap(~ Subject) +
  labs(
    title = "Student Performance by Subject",
    x = "Study Hours",
    y = "Marks"
  ) +
  theme_minimal()

print(p4)


# Step 7: Save graph
ggsave(
  filename = "student_performance.png",
  plot = p1,
  width = 8,
  height = 5
)

# Step 8: Final message
print("Student Performance Analysis Completed!")

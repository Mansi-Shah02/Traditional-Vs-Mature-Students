# Do mature students who enter university later in life report a different experience from those who follow the traditional school to university pathway?
# By Mansi Shah, May 2026
#
# 1. Create matrices
life_satisfaction <- matrix(c(6, 12, 7, 8, 19, 21, 25, 25, 19, 15, 11, 9, 6, 5, 3, 3, 1, 0, 1, 0, 1, 1, 13, 20, 75, 70, 12, 10), nrow = 14, byrow = TRUE, dimnames = list(c("10 completely", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0 not at all", "Net 9-10", "Net 5-8", "Net 0-4"), c("21 and under", "26 and over")))
academic_expectations_vs_experience <- matrix(c(24, 36, 15, 18, 46, 35, 14, 11, 0, 0, 70, 70, 1, 1), nrow = 7, byrow = TRUE, dimnames = list(c("Its been better", "Its been worse", "It's been better in some ways and worse in others", "It's been exactly what I expected", "Other", "Net better at least in some ways", "Don't know"), c("21 and under", "26 and over")))
value_for_money <- matrix(c(6, 5, 31, 26, 35, 32, 19, 24, 9, 13, 37, 31, 28, 37), nrow = 7, byrow = TRUE, dimnames = list(c("Very good value for money", "Good value for money", "Neither poor nor good value for money", "Poor value for money", "Very poor value for money", "Net good value", "Net poor value"), c("21 and under", "26 and over")))
#
# 2. Check matrices
life_satisfaction
academic_expectations_vs_experience
value_for_money
#
# 3. Bar chart life satisfaction
barplot(t(life_satisfaction[1:11, ]), beside = TRUE, col = c("#ba82ff", "#30d6ff"), legend.text = c("21 and under", "26 and over"), names.arg = c("10", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0"), main = "Overall, how satisfied are you with your life nowadays?", xlab = "Score (10 = Completely, 0 = Not at all)", ylab = "Percentage of respondents")
#
# 4. Bar chart academic expectations vs experiences
barplot(t(academic_expectations_vs_experience[1:5, ]), beside = TRUE, col = c("#ba82ff", "#30d6ff"), legend.text = c("21 and under", "26 and over"), names.arg = c("Better", "Worse", "Mixed", "As expected", "Other"), main = "Has the reality of your academic expectations\nmet your experience?", xlab = "Response", ylab = "Percentage of respondents")
#
# 5. Bar chart value for money
barplot(t(value_for_money[1:5, ]), beside = TRUE, col = c("#ba82ff", "#30d6ff"), legend.text = c("21 and under", "26 and over"), names.arg = c("Very good", "Good", "Neither", "Poor", "Very poor"), main = "How would you rate the value for money of your course?", xlab = "Response", ylab = "Percentage of respondents")

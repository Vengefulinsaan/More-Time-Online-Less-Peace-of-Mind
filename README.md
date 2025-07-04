
# 📊 More Time Online? Less Peace of Mind
**HarvardX PH125.9x: Data Science Capstone Project**  
Author: *Mohammed F. R. Noor*

---

## 🧠 Project Summary
This project explores the impact of social media use on mental health using a **simulated dataset** modeled after real-world research findings. The analysis investigates three main questions:

1. **Does increased time on social media lead to greater loneliness?**  
2. **Is comparing oneself to others online associated with anxiety or depression?**  
3. **Can taking breaks from social media improve mental health outcomes?**

---

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `report.Rmd` | R Markdown source of the project report |
| `report.pdf` | Final rendered PDF report |
| `main.R` | Complete R script with data simulation and analysis |
| `simulated_social_media_data.csv` | Simulated dataset used in the project |

> Note: The `.csv` file is **only available in this GitHub repo** as edX only accepts `.pdf`, `.Rmd`, and `.R` files.

---

## 🧪 Methods Overview

- **Data Simulation:**  
  The dataset contains 200 simulated individuals, ages 15–30, with variables like:
  - Daily social media use (in hours)
  - Number of platforms used
  - Whether the individual compares themselves to others online
  - Scores for loneliness, depression, anxiety, and well-being

- **Modeling:**  
  - Linear regression
  - Random forest (to explore non-linear patterns and variable importance)

- **Evaluation:**  
  - RMSE, accuracy, correlation analysis
  - Visualizations of trends and predictions

---

## 🔍 Key Findings

- Social media usage is moderately correlated with loneliness and depression scores.
- Random forest revealed that comparison behavior and time spent online were among the most influential variables.
- Encouraging digital detox may lead to improved well-being scores in certain user groups.

---

## ⚙️ Reproducibility

Run the analysis using the following steps:

```r
# In R:
source("main.R")
```

The script will:
- Simulate the dataset
- Save it as `simulated_social_media_data.csv`
- Run all analysis and generate output plots

All required packages will be installed automatically if not already available.

---

## 📚 References

- Empirical studies on social media and mental health:
  - https://scientiapsychiatrica.com/index.php/SciPsy/article/view/175
  - https://pubmed.ncbi.nlm.nih.gov/39242043/
  - https://pmc.ncbi.nlm.nih.gov/articles/PMC7785056/

---

## 📝 License

This project is for educational purposes as part of the **HarvardX Data Science Capstone**.  
Feel free to explore, reuse, and build upon the code with attribution.

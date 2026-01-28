# Point Estimate Calculator (R Shiny)

An interactive R Shiny application that demonstrates point estimation through random sampling. The app allows users to explore how sample size, mean, and standard deviation affect the point estimate and sampling variability.

---

## Why This Project Matters

This project emphasizes correctness, clarity, and reasoning in a small but complete application. It focuses on turning a statistical concept into a working, interactive system that behaves predictably as inputs change.

The goal is to make abstract ideas such as sampling and estimation observable, while maintaining clean structure and reproducible behavior.

---

## What the Application Does

- Generates random samples from a normal distribution
- Computes the sample mean as a point estimate
- Visualizes the sampled data using a density plot
- Allows repeated sampling to observe estimation variability

---

## Engineering Perspective

This project prioritizes controlled inputs, deterministic computation, and clear output visualization. These are the same principles used when building reliable backend services and data-driven features.

The implementation is designed to be easy to reason about, making system behavior predictable as inputs change.

---

## High-Level Design

The application is implemented as a single-file Shiny app.

**UI**  
Numeric inputs allow users to configure the mean, standard deviation, and sample size. Outputs include a numeric point estimate and a density plot.

**Server**  
On user interaction, a sample is generated using `rnorm()`. The sample mean is computed and visualized, enabling users to observe how estimates change across samples.

---

## Technologies Used

- R
- Shiny
- ggplot2

---

## How to Run the Application

### Requirements
- R (version 4.0 or higher recommended)
- R packages:
  - shiny
  - ggplot2

### Install Dependencies
Open R or RStudio and run:

install.packages(c("shiny", "ggplot2"))

### Run the App
From the project root directory, run:

shiny::runApp()

Alternatively, open `app.R` in RStudio and click **Run App**.

---

## Project Structure

.
├── app.R
├── README.md
└── docs
    └── point_estimate_spec.pdf

- `app.R` contains both the UI and server logic
- `docs/point_estimate_spec.pdf` contains the original project specification for reference

---

## Potential Improvements

- Add confidence interval computation around the point estimate
- Allow optional random seed input for reproducibility
- Display summary statistics in a table
- Compare multiple samples to illustrate convergence behavior

---

## Notes

- This project is intended for educational and exploratory purposes
- The emphasis is on correctness, clarity, and reasoning
- It complements larger system projects by demonstrating strong fundamentals

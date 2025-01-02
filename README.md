# TaylorSeriesApproximation

This MATLAB project implements Taylor series expansions to approximate functions like \( e^{ax} \) and \( \cos(ax) \). It calculates the approximations for different iterations, evaluates the accuracy using RMSE, and visualizes the results with plots.

## Features

- Taylor series approximation for \( e^{ax} \) and \( \cos(ax) \).
- Evaluation of approximation error using Root Mean Square Error (RMSE).
- Visualization of approximation accuracy over different iterations.
- Modular code with separate functions for each approximation type.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/TaylorSeriesApproximation.git
   ```
2. Ensure MATLAB is installed on your system.
3. No additional dependencies are required.

## Usage

1. Open the project folder in MATLAB.
2. Run the main script `main.m` to perform the Taylor series approximation for different functions and visualize the results.
3. You can modify the parameters (e.g., `x0`, `a`, `N`) to explore different approximations.

Example:
```matlab
x = 9;            % Point to approximate
x0 = 3;           % Expansion center
N = 10;           % Number of iterations
a = 3;            % Parameter for the function

result = taylor_projekt(x, x0, N, a);
```

## Results

The generated plots will compare the Taylor series approximation to the actual function and show the RMSE error across iterations.

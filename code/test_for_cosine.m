% Change the functions in file f
clc; clear;
format long;
x_values = -1.5:0.01*pi:1.5;  % x range with step size of 0.01*pi
x0 = 2;  % Initial value
n = 63;  % Maximum iteration
a = 7;  % Constant parameter

for j = 1:length(x_values)
    Y_values(j) = f(x_values(j), a);  % Compute function values
end

error_sum = 0;
for j = 10:n
    approx_values = approximateCosine(x_values, x0, j, a);  % Taylor approximation
    for k = 1:length(x_values)
        error_sum = error_sum + (((abs(approx_values(k) - Y_values(k)))^2) / length(x_values));  % Squared error
    end
    RMSE(j - 9) = sqrt(error_sum);  % Root Mean Square Error
    error_sum = 0;
end

subplot(2,1,1)
plot(x_values, Y_values, 'g')  % Plot original function
hold on;
approx_values = approximateCosine(x_values, x0, n, a);
plot(x_values, approx_values, 'r')  % Plot Taylor approximation
title("Comparison of approximation to the function")
legend("cos(7x)", "cos(7x) for n=63")

subplot(2,1,2)
semilogy(10:n, RMSE)  % Plot RMSE on a logarithmic scale
title("RMSE error plot for iterations 10:63")

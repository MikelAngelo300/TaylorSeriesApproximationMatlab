% Change the functions in file f
clc; clear;
format long;
x_values = -1:0.05:1;  % x range
x0 = 2;  % Initial value
n = 18;  % Maximum iteration
a = 2;  % Constant parameter

for j = 1:length(x_values)
    Y_values(j) = f(x_values(j), a);  % Compute function values
end

error_sum = 0;
for j = 10:n
    approx_values = approximateExponent(x_values, x0, j, a);  % Taylor approximation
    for k = 1:length(x_values)
        error_sum = error_sum + (((abs(approx_values(k) - Y_values(k)))^2) / length(x_values));
    end
    RMSE(j - 9) = sqrt(error_sum);  % Root Mean Square Error
    error_sum = 0;
end

subplot(2,1,1)
plot(x_values, Y_values, 'g')
hold on;
approx_values = approximateExponent(x_values, x0, 18, a);
plot(x_values, approx_values, 'r')
title("Comparison of approximation to the function")
legend("e^2^x", "e^2^x for n=18")

subplot(2,1,2)
semilogy(10:n, RMSE)
title("RMSE error plot for iterations 10:18")

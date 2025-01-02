function result = approximateExponent(x_values, x0, N, a)
    % x0 - the center of expansion point
    % x_values - the points for which we want to compute the value
    % N - the number of iterations (terms) in the Taylor series
    % a - the coefficient in e^(ax)

    y = zeros(N, length(x_values));  % Initialize the array for storing Taylor series values
    y(1, :) = f(x0, a);  % Compute the function value at the center of expansion (x0)

    C0 = [1 -x0];  % Initial coefficients for the Taylor expansion

    for i = 2:N-1
        z = factorial(i-1);  % Factorial of (i-1)
        A = a^(i-1);  % Coefficient for the Taylor term
        for j = 1:length(x_values)
            C = (x_values(j) - x0)^(i-1);  % Compute the difference raised to the power (i-1)
            y(i, j) = (A * f(x0, a) * C) / z;  % Compute the i-th term of the Taylor series
        end
    end

    result = sum(y);  % Sum all the terms to get the final Taylor series approximation
end

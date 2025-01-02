function result = approximateCosine(x_values, x0, N, a)
    % x0 - center point for the expansion
    % x_values - the points where we want to compute the value
    % N - number of iterations (terms) in the Taylor series
    % a - coefficient in cos(a*x) (a = 2*pi/T)

    y = zeros(N, length(x_values));  % Initialize the array for storing Taylor series values
    y(1, :) = f(x0, a);  % Compute the function value at the center of expansion (x0)
   
    for i = 2:N-1
        z = factorial(i-1);  % Factorial of (i-1)
        for j = 1:length(x_values)
            if mod(i, 2) ~= 0  % Odd terms correspond to cosine components
                A = ((-1)^((i-1)/2)) * (a^(i-1));  % Coefficient for the Taylor term
                C = (x_values(j) - x0)^(i-1);  % Compute the difference raised to the power (i-1)
                y(i, j) = (A * cos(a * x0) * C) / z;  % Compute the i-th term of the Taylor series for cosine
            else  % Even terms correspond to sine components
                A = ((-1)^(i/2)) * (a^(i-1));  % Coefficient for the Taylor term
                C = (x_values(j) - x0)^(i-1);  % Compute the difference raised to the power (i-1)
                y(i, j) = (A * sin(a * x0) * C) / z;  % Compute the i-th term of the Taylor series for sine
            end
        end
    end
    
    result = sum(y);  % Sum all the terms to get the final Taylor series approximation
end

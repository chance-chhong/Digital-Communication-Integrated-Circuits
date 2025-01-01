% define range and step
x = linspace(0, 1, 1000);
cos_approx_4th = 1 - x.^2 / 2 + x.^4 / 32 + x.^4 / 128 + x.^4 / 256; % Taylor 4th
sin_approx_3rd = x - x.^3 / 8 - x.^3 / 32 - x.^3 / 128; % Taylor 3rd
cos_approx_2nd = 1 - x.^2 / 2; % Taylor 2nd
sin_approx_1st = x; % Taylor 1st
cos_actual = cos(x); % true cos
sin_actual = sin(x); % true cos

% error calculation
cos_4th_error = abs(cos_actual - cos_approx_4th);
sin_3rd_error = abs(sin_actual - sin_approx_3rd);
cos_2nd_error = abs(cos_actual - cos_approx_2nd);
sin_1st_error = abs(sin_actual - sin_approx_1st);

% plot
figure;
plot(x, cos_4th_error, 'r', 'LineWidth', 1.5);
hold on;
plot(x, cos_2nd_error, 'm', 'LineWidth', 1.5);
hold on;
plot(x, sin_3rd_error, 'g', 'LineWidth', 1.5);
hold on;
plot(x, sin_1st_error, 'c', 'LineWidth', 1.5);
hold on;
grid on;
xlabel('Angle in radians');
ylabel('Relative Error');
title('Comparison of Approximation Error');
legend('Taylor 4th cos(x)','Taylor 2nd cos(x)','Taylor 3rd sin(x)','Taylor 1st sin(x)');
hold off;
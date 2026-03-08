%% tankDrainTime_test.m
% Test script for tankDrainTime.m
% Calculates drain times from High → Low and High → LowLow levels
% and suggests a sensor sampling interval.

%% --- Tank and Pipe Parameters ---
A_tank = 2.0;        % Tank cross-sectional area [m^2]
a_pipe = 0.05;       % Exit pipe cross-sectional area [m^2]
g = 9.81;            % Gravity [m/s^2]

%% --- Water Level Thresholds ---
h_high = 5.0;        % High Level (pump turns OFF) [m]
h_low = 1.0;         % Low Level (pump turns ON) [m]
h_lowlow = 0.5;      % Low-Low Level (fault condition) [m]

%% --- Drain Time Calculations ---
[t_high_to_low, ~] = tankDrainTime(A_tank, a_pipe, g, h_high, h_low);
[t_high_to_lowlow, ~] = tankDrainTime(A_tank, a_pipe, g, h_high, h_lowlow);

%% --- Display Results ---
fprintf('Time to drain from High to Low Level: %.2f seconds\n', t_high_to_low);
fprintf('Time to drain from High to LowLow Level: %.2f seconds\n', t_high_to_lowlow);

%% --- Suggested Sensor Sampling Interval ---
% Sample at least 10 times during drain from High to Low
sensor_interval = t_high_to_low / 10;
fprintf('Suggested sensor sampling interval: %.2f seconds\n', sensor_interval);

%% --- Pump and Filtration Analysis ---
rho = 1000;      % Water density [kg/m^3]
eta = 0.75;      % Pump efficiency (75%)

% Maximum flow rate at highest level
Q_max = a_pipe * sqrt(2*g*h_high);

% Pipe velocity
v_pipe = Q_max / a_pipe;

% Example filtration head loss
H_filter = 1.0;  % meters of head loss

% Total pump head
H_total = h_high + H_filter;

% Pump power estimate
P_pump = (rho * g * Q_max * H_total) / eta;

fprintf('\n--- Pump and Filtration Analysis ---\n');
fprintf('Maximum Flow Rate: %.4f m^3/s\n', Q_max);
fprintf('Pipe Velocity: %.2f m/s\n', v_pipe);
fprintf('Filter Head Loss: %.2f m\n', H_filter);
fprintf('Total Pump Head Required: %.2f m\n', H_total);
fprintf('Estimated Pump Power: %.2f W\n', P_pump);

%% --- Optional: Plot Water Height vs Time ---
% Simple plot assuming linear sqrt relation for demonstration
time_vec = linspace(0, t_high_to_low, 100);
h_vec = (sqrt(h_high) - time_vec / ((2*A_tank)/(a_pipe*sqrt(2*g)))).^2;

figure;
plot(time_vec, h_vec, 'b-', 'LineWidth', 2);
xlabel('Time [s]');
ylabel('Water Height [m]');
title('Water Level vs Time (High to Low)');
grid on;
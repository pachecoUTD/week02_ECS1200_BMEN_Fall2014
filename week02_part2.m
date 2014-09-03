clear all

% ADC parameters
ADC_nbits = 3;
ADC_range = 5;

% Part 2
% create a vector of time value
sample_rate_Hz = 100; % 100 samples per second
t = 0 : 1/sample_rate_Hz : 1;
y = 2.5 + 2.5*sin(2*pi*t);

% calculate number of levels
ADC_nlevels = 2^ADC_nbits;

% calculate ADC resolution
ADC_resolution = ADC_range / ADC_nlevels;

% ADC can only represent values between 0 and ADC_range
y_limited = y;
y_limited(y>=ADC_range) = ADC_range-ADC_resolution/10;
y_limited(y<0) = 0;

% discretize values in units of ADC counts of level number
y_ADC_counts = floor(y_limited/ADC_resolution);

% scale back to voltage
y_discretized = y_ADC_counts * ADC_resolution + ADC_resolution/2;

% plot the original signal and the discretized version
figure(1);clf;
plot(t, y, 'b-'); % 'b-' means plot in blue and connect points with a line
hold on; % this command allows us to overlay curves on the same plot
plot(t, y_discretized, 'r-'); % let's use a different color 'r' = red
xlim([0 1]);
xlabel('Time (sec)');





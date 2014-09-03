clear all

% Week 2, Part 3

% Sampling rate in Hz (number samples per second)
sample_rate_Hz = 100;

% time between samples: delta-time or dt = 1/sampling rate
dt = 1/sample_rate_Hz;

t = 0 : dt : 2;
y = mystery_function(t);

figure(2);clf;
plot(t, y, 'bo-');
xlabel('Time (sec)');



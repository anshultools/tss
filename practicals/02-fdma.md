# Practical 02 — Study of FDMA

## Aim
To simulate Frequency Division Multiple Access (FDMA) using MATLAB and observe the individual user signals and the combined FDMA signal.

## Theory
FDMA (Frequency Division Multiple Access) is a multiple access technique in which different users are assigned different frequency bands for communication. All users can transmit simultaneously, with each using a distinct frequency.

## Example
Three users are assigned different frequencies with a sampling frequency of 1 kHz.

1. **User 1:** 50 Hz
2. **User 2:** 100 Hz
3. **User 3:** 150 Hz

Each user signal is generated as a sinusoidal wave:

- **User 1:** sin(2*pi * 50 * t)
- **User 2:** sin(2*pi *100 * t)
- **User 3:** sin(2*pi *150 *t)

The combined FDMA signal is:


x(t)=x_1(t)+x_2(t)+x_3(t)


## Conclusion
The FDMA system was successfully simulated using MATLAB by assigning distinct frequencies (50 Hz, 100 Hz, and 150 Hz) to three users and combining them. This demonstrates that multiple users can communicate simultaneously using separate frequency bands.

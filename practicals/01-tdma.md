# Practical 01 — Study of TDMA

## Aim
To simulate Time Division Multiple Access (TDMA) for four users using MATLAB and observe the transmitted and received signal.

## Theory
TDMA (Time Division Multiple Access) is a multiple access technique in which multiple users share the same communication channel by using different time slots. The total transmission time is divided into several time slots, and each user is assigned a specific slot to transmit their data without interference.

## Example
Consider 4 users sharing a single communication channel with the following data:

- **User 1:** `[1 1 0 1]`
- **User 2:** `[0 1 1 0]`
- **User 3:** `[1 0 1 0]`
- **User 4:** `[0 0 1 0]`

The combined TDMA signal is formed by placing each user's data in its assigned time slot:

```
TDMA Signal = [1101 | 0110 | 1010 | 0010]
```

At the receiver, the combined signal is divided back into its respective time slots:

- **User 1:** Positions 1–4
- **User 2:** Positions 5–8
- **User 3:** Positions 9–12
- **User 4:** Positions 13–16

## Conclusion
The TDMA system was successfully simulated using MATLAB. Four users shared a single communication channel across different time slots, and the receiver accurately separated and recovered the original data for each user.

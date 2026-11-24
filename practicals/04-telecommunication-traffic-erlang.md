# Practical 04: Telecommunication Traffic (Erlang)

## Write-Up

### Aim
To calculate telecommunication traffic intensity in Erlangs and determine whether the communication system is overloaded using MATLAB.

### Apparatus
MATLAB

### Theory
Telecommunication traffic represents the unit of traffic offered to a communication system by incoming calls. It is commonly measured in Erlangs.

The traffic intensity is given by:

\[
A = \lambda \times H
\]

Where:
- **A** = traffic intensity in Erlangs
- **\(\lambda\)** = call arrival rate in calls/hr
- **H** = average call holding time in hrs

### Example
- **Number of calls (N):** 160
- **Observation time (T):** 1 hr
- **Average call duration:** 3 min
- **Carrier capacity:** 5 Erlangs

First, the average call duration is converted from minutes to hours:

\[
H = \frac{3}{60} = 0.05\text{ hr}
\]

The call arrival rate is:

\[
\lambda = \frac{N}{T} = \frac{160}{1} = 160\text{ calls/hr}
\]

The traffic intensity is:

\[
A = \lambda \times H
\]

\[
A = 160 \times 0.05 = 8\text{ Erlangs}
\]

The obtained traffic is **8 Erlangs**, while the available carrier capacity is only **5 Erlangs**. Since \(8 > 5\), the system is overloaded. The MATLAB output also gives the status as: `System is overloaded`.

### Conclusion
The telecommunication traffic was successfully calculated using MATLAB. For 160 calls in 1 hr with an average call duration of 3 min, the traffic intensity is 8 Erlangs. Since the carrier capacity is 5 Erlangs, the system is overloaded.

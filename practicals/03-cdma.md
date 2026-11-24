# Practical 03: Study of CDMA

## Write-Up

### Aim
To simulate Code Division Multiple Access (CDMA) using MATLAB and recover the original data of two users using their unique spreading codes.

### Theory
CDMA (Code Division Multiple Access) is a multiple access technique in which multiple users transmit simultaneously over the same frequency band and at the same time. Each user is assigned a unique spreading code to spread and identify their data.

### Example
Two users transmit their original binary data simultaneously:

- **User 1 data:** `[1 0 1 1]`
- **User 2 data:** `[1 1 0 1]`

For CDMA processing, binary `0` is converted to `-1`, and each user is given a different spreading code:

- **User 1 code:** `[1 1 1 1]`
- **User 2 code:** `[1 -1 1 -1]`

### Receiver Decoding
At the receiver, the combined signal is multiplied with the corresponding user's code. The chip values are summed to determine whether the received bit is `1` or `0`. Similarly, User 2's data is recovered using Code 2.

### Recovered Data
- **User 1:** `[1 0 1 1]`
- **User 2:** `[1 1 0 1]`

### Conclusion
The CDMA system was successfully simulated using MATLAB. Two users transmitted their data simultaneously using different spreading codes, and the receiver accurately separated the combined signal to recover the original data of both users.

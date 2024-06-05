# Randon-number-generate
- **Abstract:**
  - Generate 16-bit random numbers using LFSR, the mid-square method, and the linear congruential method in Verilog.Compare the randomness using the KS-test in Python.


- **Objective**: Generate and compare 16-bit random numbers using three methods: LFSR, Mid-Square, and LCG.
- **Implementation**: 
  - Use Verilog for the hardware description and simulation of the random number generators.
  - Methods:
    - **Linear Feedback Shift Register (LFSR)**
    - **Mid-Square Method**
    - **Linear Congruential Generator (LCG)**
  - Write a output of each in a seperate text file using verilog
  - Read a output file using python
  - Perform ks-test using python and compare the randomness
- **Verification**: 
  - Assess randomness using the Kolmogorov-Smirnov (KS) test.
  - Implement the KS test in Python to compare the empirical distribution of generated numbers against a theoretical distribution.
- **Outcome**: 
  - Determine the uniformity and independence of the generated random numbers.
  - Evaluate the effectiveness and reliability of each random number generation method.
- **Application**: Results applicable to cryptographic and other domains requiring high-quality randomness.

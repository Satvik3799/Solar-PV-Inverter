# Solar-PV-Inverter

# Abstract

Due to the increasing demand of renewable energy as a source of electricity, especially the solar energy, there arise a need to have a system that would work for both the on-grid and off-grid solar application , i.e., work as a hybrid system. The Project features a system that would control the flow of the power generated from PV module to the grid, household load and the battery system, depending on whether the grid is on-line or off-line, the battery needs charging or not. It has a MPPT and a PLL attached to it, which helps the system generate the maximum power possible and allows it to get connected with the grid. The SRF-PLL shown has been tested for a grid with variable frequency, phase and amplitude. It is also tested for a signal with harmonics that are usually found
in the Indian transmission/distribution network. The efficiency of the MPPT and PLL approach is tested on off-line MATLAB Simulink and its implementation was tried on STM micro-controller.


# Contents

- Declaration
- Approval sheet
- Acknowledgements
- Abstract
- 1 Introduction
  - 1.1 Increasing demand of solar energy
  - 1.2 Brief on Off and On Grid Solar PV programme
    - 1.2.1 Off-grid Solar PV Programme
    - 1.2.2 On-grid Solar PV Programme
- 2 Solar Energy
  - 2.1 What is Solar energy?
  - 2.2 Working of Solar cell
  - 2.3 Electrical Modelling of solar cell
  - 2.4 MATLAB Simulink model of Solar cell
- 3 Inverter
  - 3.1 Working of Inverter
  - 3.2 Types of Solar PV Inverter
  - 3.3 MPPT
  - 3.4 Methods to establish MPPT
  - 3.5 MATLAB Simulink model of Inverter
- 4 Controller Part of Inverter
  - 4.1 STM32F407VG Discovery Board
  - 4.2 Waijung Blockset
  - 4.3 Proposed Plan
  - 4.4 Proposed method
  - 4.5 Methodology
    - 4.5.1 Working Strategy
- 5 Inverter-Grid Synchronisation
  - 5.1 Phase Loccked-Loop(PLL)
    - 5.1.1 Synchronous Reference Frame PLL (SRF-PLL)
    - 5.1.2 Generation of Alpha and Beta signals
  - 5.2 The MATLAB Simulink model and simulations for SRF-PLL
    - 5.2.1 Simulation with a constant sinusoidal input signal (Input signal without disturbances)
    - 5.2.2 Simulation with step variation of Frequency, Phase and Amplitude (Input signal with disturbances)
    - 5.2.3 Simulation with Harmonics in the input signal
  - 5.3 Code generation for STM32F4 discovery board
- 6 Conclusion
- Appendices
- A Waijung Models
- B STM codes
  - B.1 Code for controlling switching of on/off for path P1 and P2
  - B.2 Code for MPPT
  - B.3 Code for Glowing LED for an infinite period
  - B.4 Code for making LEDs blink automatically
  - B.5 Code for making all four LEDs glow one after the other
  - B.6 Code for Making LED switch on/off by pressing switch
- C SRF-PLL Codes
  - C.1 MATLAB Function block code
    - C.1.1 Step variation of freqeucy, phase and Amplitude
  - C.2 Model Files
  - C.3 Utility Files
  - C.4 Other Files
- D SRF-PLL simulink block parameter and configurations


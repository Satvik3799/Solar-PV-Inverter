# Solar-PV-Inverter

#Abstract

Due to the increasing demand of renewable energy as a source of electricity, especially the solar energy, there arise a need to have a system that would work for both the on-grid and off-grid solar application , i.e., work as a hybrid system. The Project features a system that would control the flow of the power generated from PV module to the grid, household load and the battery system, depending on whether the grid is on-line or off-line, the battery needs charging or not. It has a MPPT and a PLL attached to it, which helps the system generate the maximum power possible and allows it to get connected with the grid. The SRF-PLL shown has been tested for a grid with variable frequency, phase and amplitude. It is also tested for a signal with harmonics that are usually found
in the Indian transmission/distribution network. The efficiency of the MPPT and PLL approach is tested on off-line MATLAB Simulink and its implementation was tried on STM micro-controller.

#Contents

Contents
Declaration . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ii
Approval sheet . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . iii
Acknowledgements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . iv
Abstract . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . vi
1 Introduction 1
1.1 Increasing demand of solar energy . . . . . . . . . . . . . . . . . . . . . . . 2
1.2 Brief on Off and On Grid Solar PV programme . . . . . . . . . . . . . . . 2
1.2.1 Off-grid Solar PV Programme . . . . . . . . . . . . . . . . . . . . . 2
1.2.2 On-grid Solar PV Programme . . . . . . . . . . . . . . . . . . . . . 3
2 Solar Energy 4
2.1 What is Solar energy ? . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
2.2 Working of Solar cell. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
2.3 Electrical Modelling of solar cell. . . . . . . . . . . . . . . . . . . . . . . . 5
2.4 MATLAB Simulink model of Solar cell . . . . . . . . . . . . . . . . . . . . 6
3 Inverter 9
3.1 Working of Inverter . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
3.2 Types of Solar PV Inverter . . . . . . . . . . . . . . . . . . . . . . . . . . . 11
3.3 MPPT . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12
3.4 Methods to establish MPPT . . . . . . . . . . . . . . . . . . . . . . . . . . 13
3.5 MATLAB Simulink model of Inverter . . . . . . . . . . . . . . . . . . . . . 15
4 Controller Part of Inverter 17
4.1 STM32F407VG Discovery Board . . . . . . . . . . . . . . . . . . . . . . . 17
4.2 Waijung Blockset . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19
4.3 Proposed Plan . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19
4.4 Proposed method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 20
4.5 Methodology . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21
4.5.1 Working Strategy . . . . . . . . . . . . . . . . . . . . . . . . . . . . 22
5 Inverter-Grid Synchronisation 26
5.1 Phase Loccked-Loop(PLL) . . . . . . . . . . . . . . . . . . . . . . . . . . . 26
5.1.1 Synchronous Reference Frame PLL (SRF-PLL) . . . . . . . . . . . 28
5.1.2 Generation of Alpha and Beta signals . . . . . . . . . . . . . . . . . 31
5.2 The MATLAB Simulink model and simulations for SRF-PLL . . . . . . . . 32
5.2.1 Simulation with a constant sinusoidal input signal (Input signal
without disturbances) . . . . . . . . . . . . . . . . . . . . . . . . . 33
5.2.2 Simulation with step variation of Frequency, Phase and Amplitude
(Input signal with disturbances) . . . . . . . . . . . . . . . . . . . . 33
5.2.3 Simulation with Harmonics in the input signal . . . . . . . . . . . . 37
5.3 Code generation for STM32F4 discovery board . . . . . . . . . . . . . . . . 38
6 Conclusion 42
Appendices 43
A Waijung Models 44
B STM codes 46
B.1 Code for controlling switching of on/off for path P1 and P2 . . . . . . . . . 46
B.2 Code for MPPT . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
B.3 Code for Glowing LED for an infinite period. . . . . . . . . . . . . . . . . . 50
B.4 Code for making LEDs blink automatically . . . . . . . . . . . . . . . . . . 51
B.5 Code for making all four LEDs glow one after the other . . . . . . . . . . . 52
B.6 Code for Making LED switch on/off by pressing switch. . . . . . . . . . . . 54
C SRF-PLL Codes 57
C.1 MATLAB Function block code . . . . . . . . . . . . . . . . . . . . . . . . . 57
C.1.1 Step variation of freqeucy, phase and Amplitude . . . . . . . . . . . 57
C.2 Model Files . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 57
C.3 Utility Files . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 65
C.4 Other Files . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 67
D SRF-PLL simulink block parameter and configurations 72

# Contents

- [Declaration](#declaration)
- [Approval sheet](#approval-sheet)
- [Acknowledgements](#acknowledgements)
- [Abstract](#abstract)
- [1 Introduction](#1-introduction)
  - [1.1 Increasing demand of solar energy](#11-increasing-demand-of-solar-energy)
  - [1.2 Brief on Off and On Grid Solar PV programme](#12-brief-on-off-and-on-grid-solar-pv-programme)
    - [1.2.1 Off-grid Solar PV Programme](#121-off-grid-solar-pv-programme)
    - [1.2.2 On-grid Solar PV Programme](#122-on-grid-solar-pv-programme)
- [2 Solar Energy](#2-solar-energy)
  - [2.1 What is Solar energy?](#21-what-is-solar-energy-)
  - [2.2 Working of Solar cell](#22-working-of-solar-cell)
  - [2.3 Electrical Modelling of solar cell](#23-electrical-modelling-of-solar-cell)
  - [2.4 MATLAB Simulink model of Solar cell](#24-matlab-simulink-model-of-solar-cell)
- [3 Inverter](#3-inverter)
  - [3.1 Working of Inverter](#31-working-of-inverter)
  - [3.2 Types of Solar PV Inverter](#32-types-of-solar-pv-inverter)
  - [3.3 MPPT](#33-mppt)
  - [3.4 Methods to establish MPPT](#34-methods-to-establish-mppt)
  - [3.5 MATLAB Simulink model of Inverter](#35-matlab-simulink-model-of-inverter)
- [4 Controller Part of Inverter](#4-controller-part-of-inverter)
  - [4.1 STM32F407VG Discovery Board](#41-stm32f407vg-discovery-board)
  - [4.2 Waijung Blockset](#42-waijung-blockset)
  - [4.3 Proposed Plan](#43-proposed-plan)
  - [4.4 Proposed method](#44-proposed-method)
  - [4.5 Methodology](#45-methodology)
    - [4.5.1 Working Strategy](#451-working-strategy)
- [5 Inverter-Grid Synchronisation](#5-inverter-grid-synchronisation)
  - [5.1 Phase Loccked-Loop(PLL)](#51-phase-loccked-loop-pll)
    - [5.1.1 Synchronous Reference Frame PLL (SRF-PLL)](#511-synchronous-reference-frame-pll-srf-pll)
    - [5.1.2 Generation of Alpha and Beta signals](#512-generation-of-alpha-and-beta-signals)
  - [5.2 The MATLAB Simulink model and simulations for SRF-PLL](#52-the-matlab-simulink-model-and-simulations-for-srf-pll)
    - [5.2.1 Simulation with a constant sinusoidal input signal (Input signal without disturbances)](#521-simulation-with-a-constant-sinusoidal-input-signal-input-signal-without-disturbances)
    - [5.2.2 Simulation with step variation of Frequency, Phase and Amplitude (Input signal with disturbances)](#522-simulation-with-step-variation-of-frequency-phase-and-amplitude-input-signal-with-disturbances)
    - [5.2.3 Simulation with Harmonics

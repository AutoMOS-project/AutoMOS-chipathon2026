# 📊 Progress Tracker: AutoECG (CMOS 180nm AFE for ECG)

**Project:** AutoECG – CMOS 180nm Analog Front-End for ECG signals with Open-Source EDA tools and GLayout  
**Event:** Chipathon 2026 – Track B (Circuits for Sensors)  
**Technology:** 180nm CMOS

---

## 👥 Team & Responsibilities

| Name | Role / Subblock | Responsibilities & Main Tasks |
|------|-----------------|-------------------------------|
| **Rodrigo Marin** | Programmable Gain Amplifier (PGA) | Schematic Design, Functional Simulation, Parameter Optimization, Layout |
| **Luighi Viton-Zorrilla** | Filter & Bias Generator | Schematic Design, Current Simulation, Noise and Stability Analysis, Layout |
| **Julio David Vilca Pizarro** | Instrumentation Amplifier (IA) | Schematic Design (Chopper/Switches), Voltage & Ripple Simulation, Load Testing, Layout |
| **Manuel Monge** | Top Integration & Architecture | System Architecture Review, Top Integration Simulation, Critical Blocks Layout |

---

## 📝 Weekly Progress Log

| Date | Phase / Week | Progress Summary | Next Steps | Blockers / Risks |
|------|--------------|------------------|------------|------------------|
| 2026-06-05 | W23: Project Def. | Project defined and clinical scope established | Draft Project Proposal | None |
| 2026-06-12 | W24: Proposal | Project proposal reviewed | Small-signal model calculations | None |
| 2026-06-19 | W25: Modelling | Initial calculations & architecture evaluation | Schematic design of subblocks | None |
| 2026-06-26 | W26: Design Start | Subblock schematic capture & CMFB / Bias design | Schematic integration & review | None |
| 2026-07-03 | W27: Schematic Rev | Top-level schematic integration & co-simulation | Parameter optimization | None |
| 2026-07-10 | W28: Optimization | Block-level optimization (Folded-Cascode, IA, Bias) | Final top-level schematic review | None |
| 2026-07-17 | W29: Top Schematic| Top-level schematic review complete | Start layout phase | None |
| 2026-07-24 | W30: Layout Start | Layout of Folded-Cascode, Bias, and Chopper/IA | DRC Dry-Run preparation | None |

---

## 📌 Status Legend
- **Done:** ✅
- **In Progress:** 🔃
- **Pending:** 🔲

---

## 🗓️ Project Roadmap & Checklist

### Phase 1 – Architecture & System Requirements
- [x] Define clinical scope & ECG characterization (0.05 Hz – 150 Hz, $100\,\mu\text{V}$ to $10\,\text{mV}_\text{pp}$)
- [x] Establish top-level AFE architecture (INA + Bandpass Filter + PGA)
- [x] Define targeted performance specs (CMRR > 90–100 dB, Input Referred Noise < $5\,\mu\text{V}$)
- [x] Define Chip Pinout (7-pin interface: $V_{DD}$, $E_{INP}$, $E_{INN}$, $GND$, $V_{OUT}$, $V_{CM}$, $DRL_{OUT}$)

### Phase 2 – Schematic Design & Simulation
- [x] **Instrumentation Amplifier (IA / INA)**
  - [x] Capacitively-coupled chopper architecture (4 kHz chopping frequency)
  - [x] Fully differential current mirror OTA + CMFB circuit
  - [x] 2-Stage operational amplifier buffer
- [x] **Filtering Scheme**
  - [x] High-Pass Filter (HPF, cutoff ~0.5 Hz with Pseudo-resistor)
  - [x] Low-Pass Filter (LPF, cutoff 100–150 Hz with 2nd order Gm-C)
  - [x] Notch Filter (50/60 Hz rejection via OTA-C biquad)
- [x] **Programmable Gain Amplifier (PGA)**
  - [x] Non-inverting switched-capacitor topology
  - [x] Programmable gain steps (5, 10, 20, 50 V/V)
  - [x] Rail-to-rail output swing driver for ADC matching
- [x] **Biasing & Auxiliaries**
  - [x] Master Bias Generator circuit
  - [x] Common-Mode Feedback (CMFB) circuit
- [x] Top-level schematic integration & co-simulation

### Phase 3 – Layout & Verification (Open-Source Flow & GLayout)
- [ ] **Block-Level Layouts**
  - [ ] Folded-Cascode & CMFB Layout (Rodrigo Marin)
  - [ ] Bias Generator Layout (Luighi Viton-Zorrilla)
  - [ ] Chopper Switches & IA Layout (Julio David Vilca Pizarro)
  - [ ] PGA & Switched-Capacitor Network Layout
- [ ] **Verification Runs**
  - [ ] W31: DRC Dry-Run execution
  - [ ] Block-level LVS verification
  - [ ] W32-W34: Layout optimization & parasitics minimization
- [ ] **Top-Level Integration & Tape-out**
  - [ ] W35: Final Top-Level Layout Assembly & Verification
  - [ ] Final Tape-out GDS submission to Chipathon

---

## 🎯 Target Specifications Summary

| Parameter | INA / AFE Target | Filter Target | PGA / Top Target |
|-----------|------------------|---------------|------------------|
| **Supply Voltage** | 3.3 V | 3.3 V | 3.3 V |
| **Gain ($A_v$)** | > 5–100 V/V | — | 200–1000 V/V (Total: ~52 dB) |
| **Bandwidth** | > 10 kHz | HPF: 0.5 Hz / LPF: 100–150 Hz | 0.5 Hz – 150 Hz |
| **CMRR** | > 90–100 dB | Notch: 50–60 Hz | > 100 dB |
| **Input Referred Noise** | < $5\,\mu\text{V}$ | — | < $30\,\mu\text{V}$ |
| **Input Impedance** | > $1\,\text{G}\Omega$ | — | > $1\,\text{G}\Omega$ |

---

## 📍 Chip Pinout Map

```text
       +-------------------+
  VDD -| 1 (VDD)   DRLOUT | 7 - DRL_OUT
 EINP -| 2 (EINP)    VCM  | 6 - VCM
 EINN -| 3 (EINN)    VOUT | 5 - VOUT
  GND -| 4 (GND)          |
       +-------------------+


# **Slide 1 – User Requirements (UR_10, UR_11, UR_12)** – 1.5 min

*"Good [morning/afternoon], today I’ll present the SysML modeling and verification of a water treatment system. We start with the **key user requirements** guiding our design. Out of twelve user requirements, I will focus on three critical ones:*

1. **UR_10 – Bacteria Removal:** The system must achieve at least a 99.99% of viable bacteria, ensuring safe drinking water.
2. **UR_11 – Parasite Removal:** The system must achieve a 99.99% of protozoa and helminths.
3. **UR_12 – Safe Contaminant Disposal:** All removed contaminants must be collected and disposed of according to environmental regulations.

*"These requirements ensure **public health protection** and regulatory compliance, forming the basis for system design and verification."*

---

# **Slide 2 – Use Case Diagram** – 1.5 min

*"Next, we have the **Use Case Diagram** for the water distribution system boundary. The diagram shows interactions with external stakeholders:*

* **System Operator** manages tower levels and disposes of filtered waste.
* **Public Health Official** ensures microbiological compliance, coordinating with a **Test Lab**.

*"Core use cases inside the system boundary include:*

* **Maintain Tower Level** with an extension for **Low-Low Level** conditions.
* **Dispose of Filtered Waste**.
* **Ensure Microbiological Compliance**, specifically for **bacteria and parasites**.

*"This diagram establishes **system boundaries** and stakeholder interactions, which guide our activity and block diagrams."*

---

# **Slide 3 – Activity Diagram: Bacteria Removal** – 1 min

*"Here is the **Bacteria Removal activity diagram**. It models the process of treating contaminated water:*

1. **Start:** Receive contaminated water.
2. **Treatment:** Apply physical filtration and/or disinfection.
3. **Monitoring:** Measure bacteria concentration.

*"A critical decision point checks if bacteria ≤ 0.1%. If not, the system **adjusts treatment parameters** and loops back, ensuring safe output. When safe, the water is released.

*"This activity diagram directly verifies **UR_10** and connects to our system requirements for bacteria removal."*

---

# **Slide 4 – Activity Diagram: Parasite Removal** – 1 min

*"Similarly, the **Parasite Removal diagram** follows the same structure:*

* Intake → Treatment → Measure parasite concentration → Decision check for ≤ 0.1%.
* Non-compliance triggers parameter adjustments; compliance leads to safe water output.

*"This diagram ensures **UR_11** is met. Note how both activity diagrams are structurally similar, highlighting a **consistent treatment approach**."*

---

# **Slide 5 – Activity Diagram: Safe Contaminant Disposal** – 1 min

*"The **Safe Contaminant Disposal diagram** focuses on **UR_12**. The workflow includes:*

1. Collecting contaminants from treatment units.
2. Isolating them in safe containers.
3. Checking compliance with environmental regulations.
4. If non-compliant, the process loops back for corrective action.

*"This ensures contaminants do not pose environmental or health risks, fulfilling regulatory and safety requirements."*

---

# **Slide 6 – Block Definition Diagram: Conceptual Architecture** – 1.5 min

*"The **BDD shows the conceptual architecture** of the water distribution system. The central block is the **Water Distribution System Boundary**, connected to:*

* **Internal subsystems:** Pump, Pipe, Monitor & Control, Water Sanitation.
* **External entities:** Water Tower, Supply Reservoir, Electrical Utility, Water Filter, Contamination Disposal.
* **Human interface:** Operator block.

*"This diagram links the **system structure** to the operational use cases and establishes the subsystems responsible for fulfilling our user requirements."*

---

# **Slide 7 – System Requirements Derived from URs** – 1 min

*"Next, we map our three user requirements to **system requirements:**

* **UR_10 → SR_10:** Bacteria removal mechanisms achieving ≥5-log reduction.
* **UR_11 → SR_11:** Parasite removal mechanisms achieving ≥3-log reduction.
* **UR_12 → SR_12:** Contaminant handling module for safe disposal.

*"Each SR specifies **how the system achieves the user requirement**, and includes a **verification method**, e.g., lab tests for bacteria or audits for disposal compliance."*

---

# **Slide 8 – Filter SS: BDD, Satisfy Matrix, STM** – 2 min

*"The **Filter SS system** shows how a subsystem satisfies requirements:*

* **BDD:** Identifies **contaminated water** and **clean water** properties.
* **Satisfy Matrix:** Links these properties to **SR_5, SR_5.1, SR_5.2, and SR_6**, ensuring traceability.
* **State Machine Diagram:** Shows operational states—**Contaminated Water → Remove Contamination → Clean Water**.

*"This integrates **structure, behavior, and requirement satisfaction**, a core SysML principle."*

---

# **Slide 9 – Requirements Verification BDD** – 1.5 min

*"Here, the **physical components** are mapped to system requirements:*

* **Pipe SS:** Satisfies **pipe velocity requirement SR_1.3**.
* **Pump SS:** Satisfies **electrical power requirement SR_4.1**.
* **Water Sanitation:** Satisfies **contaminant removal SR_5** and **safe disposal SR_6**.

*"The dashed **«satisfy»** relationships show clear **traceability from system requirements to physical components**, which is essential for verification."*

---

# **Slide 10 – Tank Drain Time & MATLAB Verification** – 3 min

*"Finally, we model **tank behavior and verification** using SysML and MATLAB.*

* **Activity diagram:** Monitors tank water levels, triggers **pump ON/OFF**, and triggers faults if levels reach Low-Low.
* **MATLAB function `tankDrainTime`** computes drain time from High → Low or High → Low-Low levels using **Torricelli’s Law**:

[
t = \frac{2 A_\text{tank}}{a_\text{pipe} \sqrt{2g}} \left(\sqrt{h_\text{start}} - \sqrt{h_\text{end}}\right)
]

* **Test script:** Calculates drain times, recommends **sensor sampling interval**, computes **pump flow, pipe velocity, and pump power**, and plots water level vs. time.

*"This validates the control logic, connects **activity diagrams to numerical simulation**, and ensures our system meets operational requirements."*

---

# **Closing – Summary & Takeaways** – 0.5 min

*"In summary:*

* We started with **user requirements** and derived **system requirements**.
* We modeled **system behavior** with activity and state machine diagrams.
* We defined **architecture and traceability** with block definition diagrams and satisfy matrices.
* Finally, we verified performance using **MATLAB simulations**, linking the SysML model to quantitative analysis.

*"This integrated approach ensures the water treatment system is **safe, compliant, and verifiable**."*

---

✅ **Timing Check:**

* Slides 1–7: ~10 min
* Slide 8–9: ~3.5 min
* Slide 10: ~3 min
* Closing: ~0.5 min
* **Total:** 15 min
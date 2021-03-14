***********************************************
FIR filter implementation and simulation
***********************************************

Introduction
=======================

In this lab you will design & simulate an FIR filter in the Vivado IDE. You may finish the code in ./Src/FIR.vhd and get the simulation running. 

Note: If you are not sure where to start on this experiment, switch to the four basic labs.  

Procedures
=================

In ./Src/stimuli.txt is a time domain signal with 8 frequency components sampled at the frequency of 44.1 kHz.

.. image:: ./images/timedomain.png
   :height: 100px
   :align: center

The following figure is the spectrum of the signal in stimuli. There are 8 frequency components in it.

.. image:: ./images/spectrum.png
   :height: 100px
   :align: center

You are expected to design a low pass FIR filter to remove six frequency components with higher frequencies.

After calculating the FIR filter coefficients using tools like python or matlab, you should implement a FIR filter with VHDL code and complete the ./Src/FIR.vhd. A testbench is provided for you to simulate your code in Vivado. 

IP cores are allowed in the design. Feel free to use any library or online resources.

In the lab report, you must show evidence of the simulation result, filter design procedures, digital filter response, and simulation output analysis.

report
======================

Submit a report with the screenshot of the simulation, and include the following sections:

     * Introduction
     * procedures
     * Results
     * Discussion/Conclusion
     * Reference
     * Appendix(code and screenshots)

Academic Honesty
========================
You must acknowledge your work including figures, codes and writings are belonging to you with your signature on the front page of all submitted reports. If any similarity in the code, comments, customized program behavior, report writings and/or figures are found, both the helper (original work) and the requestor (duplicated/modified work) will be called for academic disciplinary action including failure of this course, and student's advisor/department will be notified.

`Illinois Tech Code of Academic Honesty <https://web.iit.edu/student-affairs/handbook/fine-print/code-academic-honesty>`_

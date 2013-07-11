A chaos based image encryption scheme
=====================================

Using Lorenz and Henon's maps with multiple levels diffusion which yields ideal NPCR and UACI values.

The Henon's map is used for confusion and the Lorenz map for diffusion. Apart from the Lorenz map, another matrix with the same size as the original image is generated which is a complex function of the original image. This matrix is also used as a diffusion matrix leading to two stages of diffusion. Due to this step, there is a strong sensitivity to input image. 


<b>Contributors :</b><br/>
Raghunathan, Arjun, Kaushik, Prasanna<br/>
(Batch 2011-2015, Dept. Of Electrical and Electronics Engineering, National Institute Of Technology, Tiruchirapalli, India)

<h3>Usage</h3>
project.m is the primary source file. The path for the input image needs to be properly modified in this file. <br/>

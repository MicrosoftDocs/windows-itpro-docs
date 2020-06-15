---
title: Surface Book 3 GPU technical overview
description: This article describes the advanced capabilities enabled by Nvidia Quadro RTX 3000 in select Surface Book 3 for Business 15-inch models.
ms.prod: w10
ms.mktglfcycl: manage
ms.localizationpriority: medium
ms.sitesec: library
author: coveminer
ms.author: greglin
ms.topic: article
ms.date: 5/06/2020
ms.reviewer: brrecord
manager: laurawi
audience: itpro
---

# Surface Book 3 Quadro RTX 3000 technical overview

Surface Book 3 for Business powered by the NVIDIA® Quadro RTX™ 3000 GPU is built for professionals who need real-time rendering, AI acceleration, advanced graphics, and compute performance in a portable form factor. Quadro RTX 3000 fundamentally changes what you can do with the new Surface Book 3:

- **Ray Tracing** - Produce stunning renders, designs and animations faster than ever before with 30 RT Cores for hardware-accelerated ray tracing.
- **Artificial Intelligence** - Remove redundant, tedious tasks and compute intensive work with 240 Tensor Cores for GPU-accelerated AI.
- **Advanced Graphics and Compute Technology** - Experience remarkable speed and interactivity during your most taxing graphics and compute workloads with 1,920 CUDA Cores and 6GB of GDDR6 memory.

## Enterprise grade solution

Of paramount importance to commercial customers, Quadro RTX 3000 brings a fully professional-grade solution that combines accelerated ray tracing and deep learning capabilities with an integrated enterprise level management and support solution. Quadro drivers are tested and certified for more than 100 professional applications by leading ISVs, providing an additional layer of quality assurance to validate stability, reliability, and performance.
 
Quadro includes dedicated enterprise tools for remote management of Surface Book 3 devices with Quadro RTX 3000. IT admins can remotely configure graphics systems, save/restore configurations, continuously monitor graphics systems, and perform remote troubleshooting if necessary. These capabilities along with deployment tools help maximize uptime and minimize IT support requirements.
 
NVIDIA develops and maintains Quadro Optimal Drivers for Enterprise (ODE) that are tuned, tested, and validated to provide enterprise level stability, reliability, availability, and support with extended product availability. Each driver release involves more than 2,000 man-days of testing with professional applications test suites and test cases, as well as WHQL certification. Security threats are continually monitored, and regular security updates are released to protect against newly discovered vulnerabilities. In addition, Quadro drivers undergo an additional layer of testing by Surface engineering prior to release via Windows Update.
 

## Built for compute-intensive workloads

The Surface Book 3 with Quadro RTX 3000 delivers the best graphics performance of any Surface laptop, enabling advanced professionals to work from anywhere.
 
- **Creative professionals such as designers and animators.** Quadro RTX enables real-time cinematic-quality rendering through Turing-optimized ray tracing APIs such as NVIDIA OptiX, Microsoft DXR, and Vulkan.
- **Architects and engineers using large, complex computer aided design (CAD) models and assemblies.** The RTX platform features the new NGX SDK to infuse powerful AI-enhanced capabilities into visual applications. This frees up time and resources through intelligent manipulation of images, automation of repetitive tasks, and optimization of compute-intensive processes.
- **Software developers across manufacturing, media and entertainment, medical, and other industries.** Quadro RTX speeds application development with ray tracing, deep learning, and rasterization capabilities through industry-leading software SDKs and APIs.
- **Data scientists using Tensor Cores and CUDA cores to accelerate computationally intensive tasks and other deep learning operations.** By using sensors, increased connectivity, and deep learning, researchers and developers can enable AI applications for everything from autonomous vehicles to scientific research.

 
**Table 1. Quadro RTX 3000 performance features**

| **Component**                                       | **Description**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| RT cores                                            | Dedicated hardware-based ray-tracing technology allows the GPU to render film quality, photorealistic objects and environments with physically accurate shadows, reflections, and refractions.  The real-time ray-tracing engine works with NVIDIA OptiX, Microsoft DXR, and Vulkan APIs to deliver a level of realism far beyond what is possible using traditional rendering techniques. RT cores accelerate the Bounding Volume Hierarchy (BVH) traversal and ray casting functions using low number of rays casted through a pixel.                                     |
| Enhanced tensor cores                               | Mixed-precision cores purpose-built for deep learning matrix arithmetic, deliver 8x TFLOPS for training compared with previous generation.  Quadro RTX 3000 utilizes 240 Tensor Cores; each Tensor Core performs 64 floating point fused multiply-add (FMA) operations per clock, and each streaming multiprocessor (SM) performs a total of 1,024 individual floating-point operations per clock. In addition to supporting FP16/FP32 matrix operations, new Tensor Cores added INT8 (2,048 integer operations per clock) and experimental INT4 and INT1 (binary) precision modes for matrix operations. |
| Turing optimized software                           | Deep learning frameworks such as the Microsoft Cognitive Toolkit (CNTK), Caffe2, MXNet, TensorFlow, and others deliver significantly faster training times and higher multi-node training performance. GPU accelerated libraries such as cuDNN, cuBLAS, and TensorRT deliver higher performance for both deep learning inference and High-Performance Computing (HPC) applications.                                                                                                                                                                                           |
| NVIDIA CUDA parallel computing platform             | Natively execute standard programming languages like C/C++ and Fortran, and APIs such as OpenCL, OpenACC and Direct Compute to accelerate techniques such as ray tracing, video and image processing, and computation fluid dynamics.                                                                                                                                                                                                                                                                                                                                        |
| Advanced streaming multiprocessor (SM) architecture | Combined shared memory and L1 cache improve performance significantly, while simplifying programming and reducing the tuning required to attain the best application performance.                                                                                                                                                                                                                                                                                                                                                                                                |
| High performance GDDR6 Memory             | Quadro RTX 3000 features 6GB of frame buffer, making it the ideal platform for handling large datasets and latency-sensitive applications.                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Single instruction, multiple thread (SIMT)          | New independent thread scheduling capability enables finer-grain synchronization and cooperation between parallel threads by sharing resources among small jobs.                                                                                                                                                                                                                                                                                                                                                                                                             |
| Mixed-precision computing                           | 16-bit floating-point precision computing enables the training and deployment of larger neural networks. With independent parallel integer and floating-point data paths, the Turing SM handles workloads more efficiently using a mix of computation and addressing calculations.                                                                                                                                                                                                                                                                                          |
| Dynamic load balancing                              | Provides dynamic allocation capabilities of GPU resources for graphics and compute tasks as needed to maximize resource utilization.                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Compute preemption                                  | Preemption at the instruction-level provides finer grain control over compute tasks to prevent long-running applications from either monopolizing system resources or timing out.                                                                                                                                                                                                                                                                                                                                                                                            |
| H.264, H.265 and HEVC encode/decode engines         | Enables faster than real-time performance for transcoding, video editing, and other encoding applications with two dedicated H.264 and HEVC encode engines and a dedicated decode engine that are independent of 3D/compute pipeline.                                                                                                                                                                                                                                                                                                                                        |
| NVIDIA GPU boost 4.0                                |  Maximizes application performance automatically without exceeding the power and thermal envelope of the GPU.  Allows applications to stay within the boost clock state longer under higher temperature threshold before dropping to a secondary temperature setting base clock.                                                                                                                                                                                                                                                                                               |

 **Table 2. Quadro RTX tech specs**

| **Component**                                              | **Description** |
| ---------------------------------------------------------- | --------------- |
| NVIDIA CUDA processing cores                               | 1,920           |
| NVIDIA RT Cores                                            | 30              |
| Tensor Cores                                               | 240             |
| GPU memory                                                 | 6 GB            |
| Memory bandwidth                                           | 288 Gbps        |
| Memory type                                                | GDDR6           |
| Memory interface                                           | 192-bit         |
| TGP max power consumption                                  | 65W             |
| Display port                                               | 1.4             |
| OpenGL                                                     | 4.6             |
| Shader model                                               | 5.1             |
| DirectX                                                    | 12.1            |
| PCIe generation                                            | 3               |
| Single precision floating point performance (TFLOPS, Peak) | 5.4             |
| Tensor performance (TOPS, Peak)                            | 42.9            |
| NVIDIA FXAA/TX AA antialiasing                             | Yes             |
| GPU direct for video                                       | Yes             |
| Vulkan support                                             | Yes             |
| NVIDIA 3D vision Pro                                       | Yes             |
| NVIDIA Optimus                                             | Yes             |

 
## App acceleration

The following table shows how Quadro RTX 3000 provides significantly faster acceleration across leading professional applications. It includes SPECview perf 13 benchmark test results comparing the Surface Book 3 15-inch with NVIDIA Quadro RTX 3000 versus the Surface Book 2 15-inch with NVIDIA GeForce GTX 1060 devices in the market as of March 2020.

**Table 3. App acceleration on Surface Book 3 with Quadro RTX 3000**

| **App**                                     | **Quadro RTX 3000 app acceleration capabilities**<br>                                                                                                                                                                                                                                                                                                                                          |
| ------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Adobe Dimension                             | - RTX-accelerated ray tracing delivers photorealistic 3D rendering to 2D artists and designers.                                                                                                                                                                                                                                                                                                     |
| Adobe Substance Alchemist                   | - Create and blend materials with ease, featuring RTX-accelerated AI.                                                                                                                                                                                                                                                                                                                             |
| Adobe Substance Painter                     | - Paint materials onto 3d models, featuring RTX accelerated bakers, and Iray RTX rendering which generates photorealistic imagery for interactive and batch rendering workflows. <br>                                      |
| Adobe Substance Designer                    | - Author procedural materials featuring RTX accelerated bakers<br>- Uses NVIDIA Iray rendering including textures/substances and bitmap texture export to render in any Iray that is compatible with MDL.<br>- DXR-accelerated light and ambient occlusion baking.                                                                                                                                  |
| Adobe Photoshop                             | - CUDA core acceleration enables faster editing with 30+ GPU-accelerated features such as blur gallery, liquify, smart sharpen, and perspective warp enable photographers and designers to modify images smoothly and quickly.                                                                                                                                                                        |
| Adobe Lightroom                             | - Faster editing high res images with GPU-accelerated viewport, which enables the modeling of larger 3D scenes, and the rigging of more complex animations.<br>- GPU-accelerated image processing enables dramatically more responsive adjustments, especially on 4K or higher resolution displays.<br>- GPU-accelerated AI-powered “Enhance Details” for refining fine color detail of RAW images. |
| Adobe Illustrator                           | - Pan and zoom with GPU-accelerated canvas faster, which enables graphic designers and illustrators to pan across and zoom in and out of complex vector graphics smoothly and interactively.                                                                                                                                                                                                        |
| Adobe<br>Premiere Pro                       | - Significantly faster editing and rendering video with GPU-accelerated effects vs CPU.<br>- GPU-accelerated effects with NVIDIA CUDA technology for real-time video editing and faster final frame rendering.<br>- GPU-accelerated AI Auto Reframe feature for intelligently converting landscape video to dynamically tracked portrait or square video.                                           |
| Autodesk<br>Revit                           | - GPU-accelerated viewport for a smoother, more interactive design experience.<br>- Supports 3rd party GPU-accelerated 3D renderers such as V-Ray and Enscape.                                                                                                                                                                                                                                      |
| Autodesk<br>3ds Max                         | - GPU-accelerated viewport graphics for fast, interactive 3D modelling and design.<br>- RTX-accelerated ray tracing and AI denoising with the default Arnold renderer.<br>- More than 70 percent faster compared with Surface Book 2 15”.                                                                                                                                               |
| Autodesk<br>Maya                            | - RTX-accelerated ray tracing and AI denoising with the default Arnold renderer.<br>- OpenGL Viewport Acceleration.                                                                                                                                                                                                                                                                             |
| Dassault Systemes<br>Solidworks             | - Solidworks Interactive Ray Tracer (Visualize) accelerated by both RT Cores and Tensor Cores; AI-accelerated denoiser.<br>- Runs more than 50% faster compared with Surface Book 2 15”.                                                                                                                                                                                                             |
| Dassault Systemes<br>3D Experience Platform | - CATIA Interactive Ray Tracer (Live Rendering) accelerated by RT Cores.<br>- Catia runs more than 100% faster compared with Surface Book 2 15".                                                                                                                                                                                                                                                     |
| ImageVis3D                                  | - Runs more than 2x faster compared with Surface Book 2 15”.                                                                                                                                                                                                                                                                                                                                       |
| McNeel & Associates<br>Rhino 3D             | - GPU-accelerated viewport for a smooth and interactive modelling and design experience.<br>- Supports Cycles for GPU-accelerated 3D rendering.                                                                                                                                                                                                                                                     |
| Siemens NX                                  | - Siemens NX Interactive Ray Tracer (Ray Traced Studio) accelerated by RT Cores.<br>- Runs more than 10x faster compared with Surface Book 2 15”.                                                                                                                                                                                                                                                 |
| Esri ArcGIS                                 | - Real-time results from what took days and weeks, due to DL inferencing leveraging tensor cores.                                                                                                                                                                                                                                                                                                     |
| PTC Creo                                    | - Creo's real-time engineering simulation tool (Creo Simulation Live) built on CUDA.<br>- Runs more than 15% faster compared with Surface Book 2 15”.                                                                                                                                                                                                                                               |
| Luxion KeyShot                              | - 3rd party Interactive Ray Tracer used by Solidworks, Creo, and Rhino. Accelerated by RT Cores, OptiX™ AI-accelerated denoising.                                                                                                                                                                                                                                                                   |
| ANSYS<br>Discovery Live                     | - ANSYS real-time engineering simulation tool (ANSYS Discovery Live) built on CUDA.                                                                                                                                                                                                                                                                                                                  |
## SKUs

**Table 4. Surface Book 3 with Quadro RTX 3000 SKUs**

| **Display** | **Processor**                     | **GPU**                                                                                          | **RAM**    | **Storage** |
| ----------- | --------------------------------- | ------------------------------------------------------------------------------------------------ | ---------- | ----------- |
| 15-inch | Quad-core 10th Gen Core i7-1065G7 | Intel Iris™ Plus Graphics<br>NVIDIA Quadro RTX 3000. Max-Q Design with 6GB GDDR6 graphics memory | 32 LPDDR4x | 512 GB      |
| 15-inch | Quad-core 10th Gen Core i7-1065G7 | Intel Iris™ Plus Graphics<br>NVIDIA Quadro RTX 3000. Max-Q Design with 6GB GDDR6 graphics memory | 32 LPDDR4x | 1 TB        |

## Summary

The Surface Book 3 with Quadro RTX 3000 delivers the best graphics performance of any Surface laptop, providing architects, engineers, developers, and data scientists with the tools they need to work efficiently from anywhere:
 
- RTX-acceleration across multiple workflows like design, animation, video production, and more.
- Desktop-grade performance in a mobile form factor.
- Enterprise-class features, reliability, and support for mission-critical projects.

## Learn more

- [Surface Book 3 GPU technical overview](surface-book-GPU-overview.md)
- [Surface for Business](https://www.microsoft.com/surface/business)
- [Microsoft Cognitive Toolkit (CNTK)](https://docs.microsoft.com/cognitive-toolkit/)

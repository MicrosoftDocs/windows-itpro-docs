---
title: Using 3D Viewer Beta on HoloLens
description: 
ms.prod: hololens
ms.sitesec: library
author: Teresa-Motiv
ms.author: v-tea
ms.topic: article
ms.localizationpriority: medium
ms.date: 9/3/19
ms.reviewer: 
manager: jarrettr
appliesto:
- HoloLens 1
---

# Using 3D Viewer Beta on HoloLens

3D Viewer Beta lets you view 3D models on HoloLens. You can open and view *supported* .fbx files from Microsoft Edge, OneDrive, and other apps.

If you're having trouble opening a 3D model in 3D Viewer Beta, or certain features of your 3D model are unsupported, see [Supported content specifications](#supported-content-specifications).

To build or optimize 3D models for use with 3D Viewer Beta, see [Optimizing 3D models for 3D Viewer Beta](#optimizing-3d-models-for-3d-viewer-beta).

There are two ways to open a 3D model on HoloLens. See [Viewing 3D models on HoloLens](#viewing-3d-models-on-hololens) to learn more.

If you're having trouble after reading these topics, see [Troubleshooting](#troubleshooting).

## Supported content specifications

### File format

- FBX format
- Maximum FBX release 2015.1.0

### File size

- Minimum 5 KB
- Maximum 500 MB

### Geometry

- Polygonal models only. No subdivision surfaces or NURBs.
- Right-handed coordinate system
- Shear in transformation matrices is not supported

### Textures

- Texture maps must be embedded in the FBX file
- Supported image formats
  - JPEG and PNG images
  - BMP images (24-bit RGB true-color)
  - TGA images (24-bit RGB and 32-bit RGBQ true-color)
- Maximum texture resolution of 2048x2048
- Maximum of one diffuse map, one normal map, and one reflection cube map per mesh
- Alpha channel in diffuse textures causes pixels to be discarded if below 50%

### Animation

- Scale/rotation/translation animation on individual objects
- Skeletal (rigged) animation with skinning
   - Maximum of 4 influences per vertex

### Materials

- Lambert and Phong materials are supported, with adjustable parameters
- Supported material properties for Lambert
   - Main Texture (RGB + Alpha Test)
   - Diffuse Color (RGB)
   - Ambient Color (RGB)
- Supported material properties for Phong
   - Main Texture (RGB + Alpha Test)
   - Diffuse Color (RGB)
   - Ambient Color (RGB)
   - Specular Color (RGB)
   - Shininess
   - Reflectivity
- Custom materials are not supported
- Maximum of one material per mesh
- Maximum of one material layer
- Maximum of 8 materials per file

### File and model limitations

There are hard limits on the size of files, as well as the number of models, vertices, and meshes that can be open simultaneously in 3D Viewer Beta:

- 500 MB maximum file size per model
- Vertices: 600,000 combined on all open models
- Meshes: 1,600 combined on all open models
- Maximum of 40 models open at one time

## Optimizing 3D models for 3D Viewer Beta

### Special considerations

- Avoid black materials or black areas in texture maps. Holograms are made of light, thus HoloLens renders black (the absence of light) as transparent.
- Before exporting to FBX from your creation tool, ensure all geometry is visible and unlocked and no layers that contain geometry are turned off or templated. Visibility is not respected.
- Avoid very large translation offsets between nodes (for example, 100,000 units). This can cause the model to jitter while being moved/scaled/rotated.

### Performance optimization

Keep performance in mind while authoring content and validate in the 3D Viewer Beta app on HoloLens during the authoring process for best results. 3D Viewer Beta renders content real-time and performance is subject to HoloLens hardware capabilities.  

There are many variables in a 3D model that can impact performance. 3D Viewer Beta will show a warning on load if there are more than 150,000 vertices or more than 400 meshes. Animations can have an impact on the performance of other open models. There are also hard limits on the total number models, vertices, and meshes that can be open simultaneously in 3D Viewer Beta (see [File and model limitations](#file-and-model-limitations)).  

If the 3D model isn't running well due to model complexity, consider:

- Reducing polygon count
- Reducing number of bones in rigged animation
- Avoiding self-occlusion

Double-sided rendering is supported in 3D Viewer Beta, although it is turned off by default for performance reasons. This can be turned on via the **Double Sided** button on the **Details** page. For best performance, avoid the need for double-sided rendering in your content.

### Validating your 3D model

Validate your model by opening it in 3D Viewer Beta on HoloLens. Select the **Details** button to view your model's characteristics and warnings of unsupported content (if present).

### Rendering 3D models with true-to-life dimensions

By default, 3D Viewer Beta displays 3D models at a comfortable size and position relative to the user. However, if rendering a 3D model with true-to-life measurements is important (for example, when evaluating furniture models in a room), the content creator can set a flag within the file's metadata to prevent resizing of that model by both the application and the user.

To prevent scaling of the model, add a Boolean custom attribute to any object in the scene named Microsoft_DisableScale and set it to true. 3D Viewer Beta will then respect the FbxSystemUnit information baked into the FBX file. Scale in 3D Viewer Beta is 1 meter per FBX unit.

## Viewing 3D models on HoloLens

### Open an FBX file from Microsoft Edge

FBX files can be opened directly from a website using Microsoft Edge on HoloLens.

1. In Microsoft Edge, navigate to the webpage containing the FBX file you want to view.
1. Select the file to download it.
1. When the download is complete, select the **Open** button in Microsoft Edge to open the file in 3D Viewer Beta.

The downloaded file can be accessed and opened again later via Downloads in Microsoft Edge. To save a 3D model and ensure continued access, download the file on your PC and save it to your OneDrive account. The file can then be opened from the OneDrive app on HoloLens. See [**]Open an FBX file from OneDrive]() for more information.

Note: Some websites with downloadable FBX models provide them in compressed ZIP format. 3D Viewer Beta cannot open ZIP files directly. Instead, use your PC to extract the FBX file and save it to your OneDrive account. The file can then be opened from the OneDrive app on HoloLens.

### Open an FBX file from OneDrive

FBX files can be opened from OneDrive using the OneDrive app on HoloLens. Be sure you've installed OneDrive using Microsoft Store app on HoloLens and that you've already uploaded the FBX file to OneDrive on your PC.

Once in OneDrive, FBX files can be opened on HoloLens using 3D Viewer Beta in one of two ways:

- Launch OneDrive on HoloLens and select the FBX file to open it in 3D Viewer Beta.
- Launch 3D Viewer Beta, air tap to show the toolbar, and select **Open File**. OneDrive will launch, allowing you to select an FBX file.

## Troubleshooting

### I see a warning when opening a 3D model

You will see a warning if you attempt to open a 3D model containing features not supported by 3D Viewer Beta, or if the model is too complex and performance may be impacted. 3D Viewer Beta will still load the 3D model, but performance or visual fidelity may be compromised.

For more info, see [Supported content specifications](#supported-content-specifications) and [Optimizing 3D models for 3D Viewer Beta](#optimizing-3d-models-for-3d-viewer-beta).

### I see a warning and the 3D model doesn't load

You will see an error message when 3D Viewer Beta cannot load a 3D model due to complexity or file size, or if the FBX file is corrupt or invalid. You will also see an error message if you have reached the limit on the total number of models, vertices, or meshes that can be open simultaneously.  

For more info, see [Supported content specifications](#supported-content-specifications) and [File and model limitations](#file-and-model-limitations).

If you feel your model meets the supported content specifications and has not exceeded the file or model limitations, you may send your FBX file to the 3D Viewer Beta team at holoapps@microsoft.com. We are not able to respond personally, but having examples of files that do not load properly will help our team improve on future versions of the app.

### My 3D model loads, but does not appear as expected

If your 3D model does not look as expected in 3D Viewer Beta, air tap to show the toolbar, then select **Details**. Aspects of the file which are not supported by 3D Viewer Beta will be highlighted as warnings.

The most common issue you might see is missing textures, likely because they are not embedded in the FBX file. In this case, the model will appear white. This issue can be addressed in the creation process by exporting from your creation tool to FBX with the embed textures option selected.

For more info, see [Supported content specifications](#supported-content-specifications) and [Optimizing 3D models for 3D Viewer Beta](#optimizing-3d-models-for-3d-viewer-beta).

### I experience performance drops while viewing my 3D model

Performance when loading and viewing a 3D model can be impacted by the complexity of the model, number of models open simultaneously, or number of models with active animations.

For more info, see [Optimizing 3D models for 3D Viewer Beta](#optimizing-3d-models-for-3d-viewer-beta) and [File and model limitations](#file-and-model-limitations).

### When I open an FBX file on HoloLens, it doesn't open in 3D Viewer Beta

3D Viewer Beta is automatically associated with the .fbx file extension when it is installed.

If attempting to open an FBX file shows a dialog directing you to Microsoft Store, you do not currently have an app associated with the .fbx file extension on HoloLens.

Verify that 3D Viewer Beta is installed. If it is not installed, download it from Microsoft Store on HoloLens.

If 3D Viewer Beta is already installed, launch 3D Viewer Beta, then try opening the file again. If the issue persists, uninstall and reinstall 3D Viewer Beta. This will re-associate the .fbx file extension with 3D Viewer Beta.

If attempting to open an FBX file opens an app other than 3D Viewer Beta, that app was likely installed after 3D Viewer Beta and has taken over association with the .fbx file extension. If you prefer 3D Viewer Beta to be associated with the .fbx file extension, uninstall and reinstall 3D Viewer Beta.

### The Open File button in 3D Viewer Beta doesn't launch an app

The **Open File** button will open the app associated with the file picker function on HoloLens. If OneDrive is installed, the **Open File** button should launch OneDrive. However, if there is currently no app associated with the file picker function installed on HoloLens, you will be directed to Microsoft Store.

If the **Open File** button launches an app other than OneDrive, that app was likely installed after OneDrive and has taken over association with the file picker function. If you prefer OneDrive to launch when selecting the **Open File** button in 3D Viewer Beta, uninstall and reinstall OneDrive.

If the **Open File** button is not active, it's possible that you have reached the limit of models that can be open in 3D Viewer Beta at one time. If you have 40 models open in 3D Viewer Beta, you will need to close some before you will be able to open additional models.

## Additional resources

- [Support forums](http://forums.hololens.com/categories/3d-viewer-beta)
- [Third-party notices](https://www.microsoft.com/{lang-locale}/legal/products)

---
title: Declared configuration extensibility
description: Learn more about declared configuration extensibility through native WMI providers.
ms.date: 07/08/2024
ms.topic: how-to
---

# Declared configuration extensibility providers

The declared configuration enrollment, which supports the declared configuration client stack, offers extensibility through native WMI providers. This feature instantiates and interfaces with a Windows Management Instrumentation (WMI) provider that implements a management infrastructure (MI) interface. The interface must implement GetTargetResource, TestTargetResource, and SetTargetResource methods, and can implement any number of string properties.

> [!NOTE]
> Only string properties are currently supported by extensibility providers.

```mof
[static, Description ("Get resource state based on input configuration file." )]
uint32 GetTargetResource(
    [in, EmbeddedInstance ("MSFT_FileDirectoryConfiguration"), Description ("Configuration document that is to be applied.")]
    string InputResource,
    [in, Description ("Flags passed to the provider. Reserved for future use." )]
    uint32 Flags,
    [out, EmbeddedInstance ("MSFT_FileDirectoryConfiguration"), Description ("The current state of the specified configuration resources." )]
    string OutputResource
);

[static, Description ("Test resource state based on input configuration file." )]
uint32 TestTargetResource(
    [in, EmbeddedInstance("MSFT_FileDirectoryConfiguration"), Description ("Configuration document to be applied." )]
    string InputResource,
    [in, Description ("Flags passed to the provider. reserved for future use." )]
    uint32 Flags,
    [out, Description ("True if identical. False otherwise." )]
    boolean Result,
    [out, Description ("Context information the provider can use to optimize the set. This is optional." )]
    uint64 ProviderContext
);

[static, Description ("Set resource state based on input configuration file." )]
uint32 SetTargetResource(
    [in, EmbeddedInstance ("MSFT_FileDirectoryConfiguration"),
    Description ("Configuration document to be applied." )]
    string InputResource,
    [in, Description ("Context information the provider can use to optimize the set from SetTargetResource. This is optional." )]
    uint64 ProviderContext,
    [in, Description ("Flags passed to the provider. reserved for future use." )]
    uint32 Flags
);
```

## Author desired state configuration resources

To create a native WMI provider, follow the steps outlined in [How to implement an MI provider](/previous-versions/windows/desktop/wmi_v2/how-to-implement-an-mi-provider). These steps include how to generate the source code for an MI interface using the `Convert-MofToProvider.exe` tool to generate the DLL and prepare it for placement.

1. Create a Managed Object Format (MOF) file that defines the schema for the desired state configuration resource including parameters and methods. This file includes the required parameters for the resource.
2. Copy the schema MOF file along with any required files into the provider tools directory, for example: ProviderGenerationTool.
3. Edit the required files and include the correct file names and class names.
4. Invoke the provider generator tool to generate the provider's project files.
5. Copy the generated files into the provider's project folder.
6. Start the development process.

## Example

This example provides more details about each step to demonstrate how to implement a sample native resource named `MSFT_FileDirectoryConfiguration`.

### Step 1: Create the resource schema MOF file

Create a sample schema MOF file used to generate the initial source code for the `MSFT_FileDirectoryConfiguration` native resource. Place it in the project directory named `MSFT_FileDirectoryConfiguration`.

```mof
#pragma include ("cim_schema_2.26.0.mof")
#pragma include ("OMI_BaseResource.mof")
#pragma include ("MSFT_Credential.mof")

[ClassVersion("1.0.0"), Description("The configuration provider for files and directories.")]
class MSFT_FileDirectoryConfiguration : OMI_BaseResource
{
    [Key, Description("File name and path on target node to copy or create.")]
    string DestinationPath;

    [Write, Description("The name and path of the file to copy from.")]
    string SourcePath;

    [Write, Description("Contains a string that represents the contents of the file. To create an empty file, the string must be empty. The contents will be written and compared using UTF-8 character encoding.")]
    string Contents;

    [static, Description ("Get resource states based on input configuration file." )]
    uint32 GetTargetResource(
        [in, EmbeddedInstance ("MSFT_FileDirectoryConfiguration"), Description ("Configuration document that is to be applied." )]
        string InputResource,

        [in,Description ("Flags passed to the providers. Reserved for future use." )]
        uint32 Flags,

        [out, EmbeddedInstance ("MSFT_FileDirectoryConfiguration"), Description ("The current state of the specified configuration resources." )]
        string OutputResource
    );

    [static, Description ("Test resource states based on input configuration file." )]
    uint32 TestTargetResource(
        [in, EmbeddedInstance("MSFT_FileDirectoryConfiguration"), Description ("Configuration document that to be applied." )]
        string InputResource,

        [in, Description ("Flags passed to the providers. reserved for future use." )]
        uint32 Flags,

        [out, Description ("True if identical. False otherwise." )]
        boolean Result,

        [out, Description ("Context information that the provider can use to optimize the set, This is optional." )]
        uint64 ProviderContext
    );

    [static, Description ("Set resource states based on input configuration file." )]
    uint32 SetTargetResource(
        [in, EmbeddedInstance ("MSFT_FileDirectoryConfiguration"), Description ("Configuration document that to be applied." )]
        string InputResource,

        [in, Description ("Context information that the provider can use to optimize the set from TestTargetResource, This is optional." )]
        uint64 ProviderContext,

        [in, Description ("Flags passed to the providers. reserved for future use." )]
        uint32 Flags
    );
};
```

> [!NOTE]
>
> - The class name and DLL file name should be the same, as defined in the `Provider.DEF` file.
> - The type qualifier `[Key]` on a property indicates that it uniquely identifies the resource instance. At least one `[Key]` property is required.
> - The `[Required]` qualifier indicates that the property is required. In other words, a value must be specified in any configuration script that uses this resource.
> - The `[write]` qualifier indicates that the property is optional when using the custom resource in a configuration script. The `[read]` qualifier indicates that a property can't be set by a configuration, and is for reporting purposes only.
> - The `[Values]` qualifier restricts the values that can be assigned to the property. Define the list of allowed values in `[ValueMap]`. For more information, see [ValueMap and value qualifiers](/windows/win32/wmisdk/value-map).
> - Any new MOF file should include the following lines at the top of the file:
>
>     ```mof
>     #pragma include ("cim_schema_2.26.0.mof")
>     #pragma include ("OMI_BaseResource.mof")
>     #pragma include ("MSFT_Credential.mof")
>     ```
>
> - Method names and its parameters should be same for every resource. Change `MSFT_FileDirectoryConfiguration` from EmbeddedInstance value to the class name of the desired provider. There should be only one provider per MOF file.

### Step 2: Copy the schema MOF files

Copy these required files and folders to the project directory you created in step 1:

- `CIM-2.26.0`
- `codegen.cmd`
- `Convert-MofToProvider.exe`
- `MSFT_Credential.mof`
- `MSFT_DSCResource.mof`
- `OMI_BaseResource.mof`
- `OMI_Errors.mof`
- `Provider.DEF`
- `wmicodegen.dll`

For more information on how to obtain the required files, see [How to implement an MI provider](/previous-versions/windows/desktop/wmi_v2/how-to-implement-an-mi-provider).

### Step 3: Edit the required files

Modify the following files in the project directory:

- `MSFT_FileDirectoryConfiguration.mof`: You created this file in step 1.
- `Provider.DEF`: This file contains the DLL name, for example, `MSFT_FileDirectoryConfiguration.dll`.
- `codegen.cmd`: This file contains the command to invoke `convert-moftoprovider.exe`.

    ```cmd
    "convert-moftoprovider.exe" ^
       -MofFile MSFT_FileDirectoryConfiguration.mof ^
                MSFT_DSCResource.mof ^
                OMI_Errors.mof ^
       -ClassList MSFT_FileDirectoryConfiguration ^
       -IncludePath CIM-2.26.0 ^
       -ExtraClass OMI_Error ^
                   MSFT_DSCResource ^
       -OutPath temp
    ```

### Step 4: Run the provider generator tool

Run `codegen.cmd`, which runs the `convert-moftoprovider.exe` command. Alternatively, you can run the command directly.

### Step 5: Copy the generated source files

The command in step 3 specifies the `-OutPath` parameter, which in this example is a folder named `temp`. When you run the tool in step 4, it creates new files in this folder. Copy the generated files from this `temp` folder to the project directory. You created the project directory in step 1, which in this example is `MSFT_FileDirectoryConfiguration`.

> [!NOTE]
> Any time you update the schema MOF file, run the `codegen.cmd` script to regenerate the source files. Rerunning the generator tool overwrites any existing the source files. To prevent this behavior, this example uses a temporary folder. Minimize updates to the schema MOF file since the main implementation should be merged with the most recent auto-generated source files.

### About the `MSFT_FileDirectoryConfiguration` resource

After you run the provider generator tool, it creates several source and header files:

- `MSFT_FileDirectoryConfiguration.c`
- `MSFT_FileDirectoryConfiguration.h`
- `module.c`
- `schema.c`
- `WMIAdapter.c`

From this list, you only need to modify `MSFT_FileDirectoryConfiguration.c` and `MSFT_FileDirectoryConfiguration.h`. You can also change the extension for the source files from `.c` to `.cpp`, which is the case for this resource. The business logic for this resource is implemented in `MSFT_FileDirectoryConfigurationImp.cpp` and `MSFT_FileDirectoryConfigurationImp.h`. These new files are added to the `MSFT_FileDirectoryConfiguration` project directory after you run the provider generator tool.

For a native desired state configuration resource, you have to implement three autogenerated functions in `MSFT_FileDirectoryConfiguration.cpp`:

- `MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource`
- `MSFT_FileDirectoryConfiguration_Invoke_TestTargetResource`
- `MSFT_FileDirectoryConfiguration_Invoke_SetTargetResource`

From these three functions, only `MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource` is required for a Get scenario. `MSFT_FileDirectoryConfiguration_Invoke_TestTargetResource` and `MSFT_FileDirectoryConfiguration_Invoke_SetTargetResource` are used when remediation is needed.

There are several other autogenerated functions in `MSFT_FileDirectoryConfiguration.cpp` that don't need implementation for a native desired state configuration resource. You don't need to modify the following functions:

- `MSFT_FileDirectoryConfiguration_Load`
- `MSFT_FileDirectoryConfiguration_Unload`
- `MSFT_FileDirectoryConfiguration_EnumerateInstances`
- `MSFT_FileDirectoryConfiguration_GetInstance`
- `MSFT_FileDirectoryConfiguration_CreateInstance`
- `MSFT_FileDirectoryConfiguration_ModifyInstance`
- `MSFT_FileDirectoryConfiguration_DeleteInstance`

### About `MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource`

The `MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource` function does the following steps to complete its task:

1. Validate the input resource.
1. Ensure the keys and required parameters are present.
1. Create a resource instance that is used as the output of the Get method. This instance is of type `MSFT_FileDirectoryConfiguration`, which is derived from `MI_Instance`.
1. Create the output resource instance from the modified resource instance and return it to the MI client by calling these functions:

    - `MSFT_FileDirectoryConfiguration_GetTargetResource_Construct`
    - `MSFT_FileDirectoryConfiguration_GetTargetResource_SetPtr_OutputResource`
    - `MSFT_FileDirectoryConfiguration_GetTargetResource_Set_MIReturn`
    - `MSFT_FileDirectoryConfiguration_GetTargetResource_Post`
    - `MSFT_FileDirectoryConfiguration_GetTargetResource_Destruct`

1. Clean up resources, for example, free allocated memory.

## MI implementation references

- [Introducing the management infrastructure (MI) API](/archive/blogs/wmi/introducing-new-management-infrastructure-mi-api)
- [Implementing MI provider (1) - Overview](/archive/blogs/wmi/implementing-mi-provider-1-overview)
- [Implementing MI provider (2) - Define schema](/archive/blogs/wmi/implementing-mi-provider-2-define-schema)
- [Implementing MI provider (3) - Generate code](/archive/blogs/wmi/implementing-mi-provider-3-generate-code)
- [Implementing MI provider (4) - Generate code (continue)](/archive/blogs/wmi/implementing-mi-provider-4-generate-code-continute)
- [Implementing MI provider (5) - Implement](/archive/blogs/wmi/implementing-mi-provider-5-implement)
- [Implementing MI provider (6) - Build, register, and debug](/archive/blogs/wmi/implementing-mi-provider-6-build-register-and-debug)
- [MI interfaces](/previous-versions/windows/desktop/wmi_v2/mi-interfaces)
- [MI datatypes](/previous-versions/windows/desktop/wmi_v2/mi-datatypes)
- [MI structures and unions](/previous-versions/windows/desktop/wmi_v2/mi-structures-and-unions)
- [MI_Result enumeration (mi.h)](/windows/win32/api/mi/ne-mi-mi_result)
- [MI_Type enumeration (mi.h)](/windows/win32/api/mi/ne-mi-mi_type)

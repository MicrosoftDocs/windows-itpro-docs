---
title: Declared Configuration Extensibility
description: Learn more about Declared Configuration extensibility through native WMI providers.
ms.date: 09/11/2023
ms.topic: how-to
---

# Declared Configuration Extensibility Providers

The Declared Configuration enrollment supporting the Declared Configuration client stack, offers Extensibility through native WMI providers. This feature instantiates and interfaces with a Windows Management Instrumentation (WMI) provider that has implemented an MI interface. The interface must implement GetTargetResource, TestTargetResource, and SetTargetResource methods, and may implement any number of string properties.

> [!NOTE]
> Only string properties are currently supported by Extensibility providers.

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

## Author DSC resources

To create a native WMI provider, follow the steps outlined in [How to Implement an MI Provider](/previous-versions/windows/desktop/wmi_v2/how-to-implement-an-mi-provider). These steps include generating the source code for MI interface using Convert-MofToProvider.exe tool to generate the DLL and prepare it for placement.

1. Create a MOF file that defines the schema for DSC resource including parameters and methods. This file includes the required parameters for the resource.
2. Copy the schema MOF file along with any required files into the provided tools directory, i.e. ProviderGenerationTool.
3. Edit the required files and include the correct file names and class names.
4. Invoke the provider generator tool to generate provider's project files.
5. Copy the generated files into the provider's project folder.
6. Start the development process.

### Example

This example shows how to generate the initial source code for a sample resource.

### Step 1: Create the Resource Schema File in MOF Format

This is the sample schema MOF file used to generate the initial source code for the `MSFT_FileDirectoryConfiguration` native resource.

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

Note the following about the schema MOF files:

- Class name and DLL file name should be the same; as defined in `Provider.DEF` file.
- The type qualifier, `[Key]`, on a property indicates that this property will uniquely identify the resource instance. At least one `[Key]` property is required.
- The `[Required]` qualifier indicates that the property is required (a value must be specified in any configuration script that uses this resource).
- The `[write]` qualifier indicates that this property is optional when using the custom resource in a configuration script. The `[read]` qualifier indicates that a property cannot be set by a configuration, and is for reporting purposes only.
- `[Values]` qualifier restricts the values that can be assigned to the property to the list of values defined in `[ValueMap]`. For more information, see [ValueMap and Value Qualifiers](/windows/win32/wmisdk/value-map).
- Any new MOF file should include the following lines at the top of the file:

    ```mof
    #pragma include ("cim_schema_2.26.0.mof")
    #pragma include ("OMI_BaseResource.mof")
    #pragma include ("MSFT_Credential.mof")
    ```

- Method names and its parameters should be same for every resource. Change `MSFT_FileDirectoryConfiguration` from EmbeddedInstance value to the class name of the desired provider. There should be only one provider per MOF file.

### Step 2: Copy the schema MOF files

Copy all the required files and folders to the project directory:

- CIM-2.26.0
- codegen.cmd
- Convert-MofToProvider.exe
- MSFT_Credential.mof
- MSFT_DSCResource.mof
- OMI_BaseResource.mof
- OMI_Errors.mof
- Provider.DEF
- wmicodegen.dll

For more information, see [How to Implement an MI Provider](/previous-versions/windows/desktop/wmi_v2/how-to-implement-an-mi-provider).

### Step 3: Edit the required files

Modify the following files in the project directory:

- MSFT_FileDirectoryConfiguration.mof: This is the file that was created in step 1.
- Provider.DEF: This file contains the DLL name, e.g. `MSFT_FileDirectoryConfiguration.dll`.
- codegen.cmd: This file contains the command to invoke `convert-moftoprovider.exe`.

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

### Step 4: Invoke the provider generator tool

Run `codegen.cmd` which invokes the `convert-moftoprovider.exe` command. Alternatively, you can run the command directly.

### Step 5: Copy generated source files

This example uses a `temp` folder that was specified as `-OutPath` parameter in the command from step 3 as the output and renames it to `MSFT_FileDirectoryConfiguration`. This is useful when resource parameters in the schema MOF file are modified. Because with each update to the schema MOF file, the codegen.cmd script to regenerate the source files must be executed again and this tool will overwrite the source files if they exist. So, to prevent that from overwriting the implementation, a temporary folder could be used.

Moreover, it is best to minimize the updates to the schema MOF file since the main implementation should be merged with the most recent auto-generated source files.

### Example MSFT_FileDirectoryConfiguration Resource

After running the provider generator tool, it creates several source and header files including:

- MSFT_FileDirectoryConfiguration.c
- MSFT_FileDirectoryConfiguration.h
- module.c
- schema.c
- WMIAdapter.c

From this list, only `MSFT_FileDirectoryConfiguration.c` and `MSFT_FileDirectoryConfiguration.h` need modifications. The extension for the source files can be changed from `c` to `cpp` too (which is the case for this resource). The business logic for this resource is implemented in `MSFT_FileDirectoryConfigurationImp.cpp` and `MSFT_FileDirectoryConfigurationImp.h`. These new files are added to the MSFT_FileDirectoryConfiguration directory after the provider generator tool was invoked.

There are three auto-generated functions in MSFT_FileDirectoryConfiguration.cpp that must be implemented for a native DSC resource:

- MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource
- MSFT_FileDirectoryConfiguration_Invoke_TestTargetResource
- MSFT_FileDirectoryConfiguration_Invoke_SetTargetResource

From these three functions, only MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource is required for a Get scenario. MSFT_FileDirectoryConfiguration_Invoke_TestTargetResource and MSFT_FileDirectoryConfiguration_Invoke_SetTargetResource are used when remediation is needed. Besides these three functions, there are several other auto-generated functions in MSFT_FileDirectoryConfiguration.cpp that don't need implementation for a native DSC resource and should be left as-is.

- MSFT_FileDirectoryConfiguration_Load
- MSFT_FileDirectoryConfiguration_Unload
- MSFT_FileDirectoryConfiguration_EnumerateInstances
- MSFT_FileDirectoryConfiguration_GetInstance
- MSFT_FileDirectoryConfiguration_CreateInstance
- MSFT_FileDirectoryConfiguration_ModifyInstance
- MSFT_FileDirectoryConfiguration_DeleteInstance

### Details on MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource

MSFT_FileDirectoryConfiguration_Invoke_GetTargetResource performs these steps to complete its task:

1. Validate the input resource.
1. Ensure the keys and required parameters are present.
1. Create a resource instance that will be used as the output of the Get method. This instance is of type MSFT_FileDirectoryConfiguration which is derived from MI_Instance.
1. Create the output resource instance from the modified resource instance and return it to the MI client by calling these functions:

    - MSFT_FileDirectoryConfiguration_GetTargetResource_Construct
    - MSFT_FileDirectoryConfiguration_GetTargetResource_SetPtr_OutputResource
    - MSFT_FileDirectoryConfiguration_GetTargetResource_Set_MIReturn
    - MSFT_FileDirectoryConfiguration_GetTargetResource_Post
    - MSFT_FileDirectoryConfiguration_GetTargetResource_Destruct

1. Make sure to clean up, e.g. free allocated memory.

## MI implementation references

- [Introducing new Management Infrastructure (MI) API](https://blogs.msdn.microsoft.com/wmi/2013/05/16/introducing-new-management-infrastructure-mi-api/)
- [Implementing MI Provider (1) - Overview](https://blogs.msdn.microsoft.com/wmi/2013/05/08/implementing-mi-provider-1-overview/)
- [Implementing MI Provider (2) - Define Schema](https://blogs.msdn.microsoft.com/wmi/2013/05/08/implementing-mi-provider-2-define-schema/)
- [Implementing MI Provider (3) - Generate Code](https://blogs.msdn.microsoft.com/wmi/2013/05/11/implementing-mi-provider-3-generate-code/)
- [Implementing MI Provider (4) - Generate Code (continue)](https://blogs.msdn.microsoft.com/wmi/2013/12/28/implementing-mi-provider-4-generate-code-continute/)
- [Implementing MI Provider (5) - Implement](https://blogs.msdn.microsoft.com/wmi/2013/12/28/implementing-mi-provider-5-implement/)
- [Implementing MI Provider (6) - Build, Register, and Debug](https://blogs.msdn.microsoft.com/wmi/2013/12/28/implementing-mi-provider-6-build-register-and-debug/)
- [MI Interfaces](/previous-versions/windows/desktop/wmi_v2/mi-interfaces)
- [MI Datatypes](/previous-versions/windows/desktop/wmi_v2/mi-datatypes)
- [MI Structures and Unions](/previous-versions/windows/desktop/wmi_v2/mi-structures-and-unions)
- [MI_Result Enumeration](/windows/win32/api/mi/ne-mi-mi_result)
- [MI_Type Enumeration](/windows/win32/api/mi/ne-mi-mi_type)

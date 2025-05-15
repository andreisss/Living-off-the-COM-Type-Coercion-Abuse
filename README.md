# Living-off-the-COM-Type-Coercion-Abuse

This technique leverages PowerShell's .NET interop layer and COM automation to achieve stealthy command execution by abusing implicit type coercion. A custom .NET object is defined in PowerShell with an overridden .ToString() method. When this object is passed to a COM method such as Shell.Application.ShellExecute, PowerShell implicitly calls .ToString(), converting the object to a string at runtime. 
This allows arbitrary commands to be executed without those commands appearing in script block logging or on the command line directly.
The technique, which exploits the automatic conversion of objects to strings via the ToString() method when interacting with COM methods. This creates an execution path that may bypass traditional security monitoring tools focused on direct PowerShell command execution.


At its core, this technique involves three key components:
Custom Class Definition: Creating a class that overrides the standard ToString() method to return a command string rather than typical object information
PowerShell Type Coercion: Leveraging PowerShell's automatic type conversion system
COM Object Execution: Using the ShellExecute method of the Shell.Application COM object

![15 05 2025_22 32 54_REC](https://github.com/user-attachments/assets/2e60d49f-8593-425f-ba9a-40ad5fa0beee)

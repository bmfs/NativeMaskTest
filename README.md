# NativeMaskTest
Testbed for a unexpected behavior with masks on cpp target (windows)

This example works correctly in flash and html5, but on windows there is an issue with the masks.
The inner masks is also masking the elements in front of it.

Check https://github.com/bmfs/NativeMaskTest/blob/master/Source/Main.hx#L35

Not activating the mask for the top level element stops the unexpected behavior. (But I actually want to have the top level mask... )

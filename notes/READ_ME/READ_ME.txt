About This Wrapper

This is an attempt to demystify the new UI system in GameMaker
specifically the FlexPanel/Yoga-based layout tools.

While this wrapper isn't production-ready, it's a great starting point to understand how the system works.
You can study it, extend it, or build your own version from scratch.

For usage details, check the "REFERENCE" section to see style options for each element type.

The oController object is an example of how to add instances to UI layers through this system.

Prerequisites

    You must create a UI layer manually in the IDE.
    GameMaker doesn’t currently allow creating UI layers at runtime 
	(or at least, I couldn’t get it to work — maybe I did it wrong, who knows).

    Don’t attach a FlexPanel to the layer in the IDE.
    If you do, layout will break at runtime. 
	This wrapper will handle adding the FlexPanel correctly through code.
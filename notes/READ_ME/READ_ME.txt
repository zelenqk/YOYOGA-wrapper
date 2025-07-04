# YOYOGA-wrapper

> A wrapper for exploring GameMaker’s new FlexPanel (Yoga-based) UI system.

---

## About This Wrapper

This is an attempt to demystify the new UI system in GameMaker — specifically the FlexPanel/Yoga-based layout tools.

While this wrapper isn't production-ready, it's a great starting point to understand how the system works.  
You can study it, extend it, or build your own version from scratch.

- Check the "REFERENCE" note for a full list of element style properties.
- The oController object is used as an example of how to add instances to UI layers at runtime.

---

## Prerequisites

> Important: GameMaker requires some setup in the IDE for this to work correctly.

-	You must create a UI layer manually using the IDE.**  
	GameMaker does not support creating UI layers at runtime (or at least, I couldn’t get it to work maybe I did it wrong, who knows).

-	Do not attach a FlexPanel to the UI layer in the IDE.
	Let the wrapper handle this during runtime. Otherwise, layout issues will occur.

---

## Quirks

> Colors
	So for some reason colors are an unsigned negative integer and since GM colors are weird too they
	are not compatible with GM's UI system's colors
	
	colors are formatted as so AABBGGRR... yep and you cant use gamemaker colors so you need to use 0xFF0000FF this makes red color and 0xFFFF00FF makes magenta
	or you could use the util func make_color(r, g, b, a) where a is between 0 and 1

---
## What's Next?

I might rebuild this into something more powerful later.  
For now, feel free to poke around and modify it to fit your needs.

---

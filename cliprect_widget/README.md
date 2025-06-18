# What’s Inside
The main feature here is the ClipRect widget. It clips its child widget so only part of it shows, depending on the size constraints. This works with AnimatedSize to smoothly expand and collapse the view when you press the button.

# Three Key Properties
child: The widget that gets clipped—in this app, a column containing an image and some text.

clipBehavior: Controls how the clipping is performed (e.g., hard edge or anti-aliased). We use the default setting.

AnimatedSize (not part of ClipRect but important here): Animates the size changes of the clipped area for a smooth transition.

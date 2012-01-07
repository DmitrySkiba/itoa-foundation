This is a Foundation implementation with a twist - its just a tiny layer above CoreFoundation.

Unlike Apple's implementation where some classes (NSString) are also wrappers, this implementation expects most NS classes (where there are corresponding CF classes) to be implemented in CoreFoundation. The motivation is that Apple's CoreFoundation is already implements significant part of Foundation framework (and does it the right way), so there is no sense to reimplement it again in Foundation.

This implementation is based on [Cocotron](http://code.google.com/p/cocotron/). Some classes were already modified to be a tiny wrappers (NSData, NSString), many others need to be processed (NSArray, etc).

The implementation relies on special CoreFoundation version, [itoa-cleancf](/DmitrySkiba/itoa-cleancf).

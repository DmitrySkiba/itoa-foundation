#
# Copyright (C) 2011 Dmitry Skiba
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

MODULE_PATH := $(call my-dir)

include $(CLEAR_VARS)

MODULE_NAME := foundation

$(call itoa-sysroot-copy-files,\
    $(MODULE_PATH)/include/Foundation,usr/include/Foundation)
$(call itoa-sysroot-copy-files,\
    $(MODULE_PATH)/include/todo/Foundation,usr/include/Foundation)

$(eval $(call itoa-copy-file,\
    $(MODULE_PATH)/LICENSE.txt,$(MODULE_NAME).license.txt))

MODULE_CFLAGS += \
    -I$(MODULE_PATH)/include \
    -I$(MODULE_PATH)/src/Foundation \
    \
    -I$(MODULE_PATH)/include/todo \
    -I$(MODULE_PATH)/src/todo \
    -I$(MODULE_PATH)/src/todo/Foundation \
    \
    -DCOCOTRON_DISALLOW_FORWARDING \
    -D__LITTLE_ENDIAN__ \
    -D__APPLE__ \

MODULE_SRC_FILES +=  \
    src/Foundation/NSObject.m \
    src/Foundation/NSZone.m \
    src/Foundation/NSObjCRuntime.m \
    src/Foundation/NSException.m \
    src/Foundation/NSNull.m \
    src/Foundation/NSCFType.m \
    src/Foundation/NSData.m \
    src/Foundation/NSMutableData.m \
    src/Foundation/NSCFData.m \
    src/Foundation/NSCFMutableData.m \
    src/Foundation/NSCFString.m \
    src/Foundation/NSCFMutableString.m \
    src/Foundation/NSString.m \
    src/Foundation/NSMutableString.m \
    src/Foundation/NSInternal.m \
    src/Foundation/NSRange.m \
    src/Foundation/NSCF.m \
    \
    \
    src/todo/Foundation/NSAutoReleasePool.m \
    src/todo/Foundation/NSMemoryFunctions.m \
    \
    src/todo/Foundation/NSHTTPCookie.m \
    src/todo/Foundation/NSHTTPCookieStorage.m \
    src/todo/Foundation/NSCoder.m \
    src/todo/Foundation/NSDecimal.m \
    src/todo/Foundation/NSDecimalNumber.m \
    src/todo/Foundation/NSMapTable.m \
    src/todo/Foundation/NSLocale.m \
    src/todo/Foundation/NSZombieObject.m \
    src/todo/Foundation/NSDebug.m \
    src/todo/Foundation/NSFormatter.m \
    src/todo/Foundation/NSByteOrder.m \
    src/todo/Foundation/NSError.m \
    src/todo/Foundation/NSSortDescriptor.m \
    src/todo/Foundation/NSProcessInfo.m \
    \
    src/todo/Foundation/netservice/NSNetServices.m \
    src/todo/Foundation/netservice/bonjour.m \
    \
    src/todo/Foundation/xml/NSXMLDTD.m \
    src/todo/Foundation/xml/NSXMLDTDNode.m \
    src/todo/Foundation/xml/NSXMLDocument.m \
    src/todo/Foundation/xml/NSXMLElement.m \
    src/todo/Foundation/xml/NSXMLNode.m \
    src/todo/Foundation/xml/NSXMLParser.m \
    \
    src/todo/Foundation/valuetransformer/NSValueTransformer.m \
    src/todo/Foundation/valuetransformer/NSValueTransformer_IsNil.m \
    src/todo/Foundation/valuetransformer/NSValueTransformer_IsNotNil.m \
    src/todo/Foundation/valuetransformer/NSValueTransformer_NegateBoolean.m \
    src/todo/Foundation/valuetransformer/NSValueTransformer_UnarchiveFromData.m \
    \
    src/todo/Foundation/NSScanner.m \
    src/todo/Foundation/scanner/NSScanner_concrete.m \
    \
    src/todo/Foundation/NSDictionary.m \
    src/todo/Foundation/dictionary/NSDictionary_mapTable.m \
    src/todo/Foundation/dictionary/NSMutableDictionary_mapTable.m \
    \
    src/todo/Foundation/notification/NSNotification.m \
    src/todo/Foundation/notification/NSNotificationQueue.m \
    src/todo/Foundation/notification/NSNotification_concrete.m \
    src/todo/Foundation/notification/NSNotificationObserver.m \
    src/todo/Foundation/notification/NSObjectToObservers.m \
    src/todo/Foundation/notification/NSNotificationAndModes.m \
    \
    src/todo/Foundation/NSEnumerator.m \
    src/todo/Foundation/enumerator/NSEnumerator_array.m \
    src/todo/Foundation/enumerator/NSEnumerator_arrayReverse.m \
    src/todo/Foundation/enumerator/NSEnumerator_dictionaryKeys.m \
    src/todo/Foundation/enumerator/NSEnumerator_dictionaryObjects.m \
    src/todo/Foundation/enumerator/NSEnumerator_set.m \
    \
    src/todo/Foundation/NSSet.m \
    src/todo/Foundation/set/NSSet_concrete.m \
    src/todo/Foundation/set/NSSet_placeholder.m \
    src/todo/Foundation/set/NSMutableSet_concrete.m \
    \
    src/todo/Foundation/NSArray.m \
    src/todo/Foundation/array/NSArray_concrete.m \
    src/todo/Foundation/array/NSArray_placeholder.m \
    src/todo/Foundation/array/NSMutableArray_concrete.m \
    \
    src/todo/Foundation/NSValue.m \
    src/todo/Foundation/value/NSValue_concrete.m \
    src/todo/Foundation/value/NSValue_nonRetainedObject.m \
    src/todo/Foundation/value/NSValue_placeholder.m \
    src/todo/Foundation/value/NSValue_pointer.m \
    \
    src/todo/Foundation/NSNumberFormatter.m \
    src/todo/Foundation/number/NSNumber_BOOL.m \
    src/todo/Foundation/number/NSNumber_BOOL_const.m \
    src/todo/Foundation/number/NSNumber_char.m \
    src/todo/Foundation/number/NSNumber_double.m \
    src/todo/Foundation/number/NSNumber_double_const.m \
    src/todo/Foundation/number/NSNumber_float.m \
    src/todo/Foundation/number/NSNumber_int.m \
    src/todo/Foundation/number/NSNumber_long.m \
    src/todo/Foundation/number/NSNumber_longLong.m \
    src/todo/Foundation/number/NSNumber_placeholder.m \
    src/todo/Foundation/number/NSNumber_short.m \
    src/todo/Foundation/number/NSNumber_unsignedChar.m \
    src/todo/Foundation/number/NSNumber_unsignedInt.m \
    src/todo/Foundation/number/NSNumber_unsignedLong.m \
    src/todo/Foundation/number/NSNumber_unsignedLongLong.m \
    src/todo/Foundation/number/NSNumber_unsignedShort.m \
    \
    src/todo/Foundation/NSProxy.m \
    src/todo/Foundation/connection/NSConnection.m \
    src/todo/Foundation/connection/NSDistantObject.m \
    src/todo/Foundation/connection/NSMessagePort.m \
    src/todo/Foundation/connection/NSPort.m \
    src/todo/Foundation/connection/NSPortCoder.m \
    src/todo/Foundation/connection/NSPortMessage.m \
    src/todo/Foundation/connection/NSProtocolChecker.m \
    src/todo/Foundation/connection/NSSocketPort.m \
    \
    src/todo/Foundation/operation/NSAtomicList.m \
    src/todo/Foundation/operation/NSLatchTrigger.m \
    src/todo/Foundation/operation/NSOperation.m \
    src/todo/Foundation/operation/NSOperationQueue.m \
    \
    src/todo/Foundation/attributedstring/NSAttributedString.m \
    src/todo/Foundation/attributedstring/NSAttributedString_manyAttributes.m \
    src/todo/Foundation/attributedstring/NSAttributedString_nilAttributes.m \
    src/todo/Foundation/attributedstring/NSAttributedString_oneAttribute.m \
    src/todo/Foundation/attributedstring/NSAttributedString_placeholder.m \
    src/todo/Foundation/attributedstring/NSMutableAttributedString.m \
    src/todo/Foundation/attributedstring/NSMutableAttributedString_concrete.m \
    src/todo/Foundation/attributedstring/NSMutableString_proxyToMutableAttributedString.m \
    src/todo/Foundation/attributedstring/NSRangeEntries.m \
    \
    src/todo/Foundation/NSUserDefaults.m \
    src/todo/Foundation/userdefaults/NSPersistantDomain.m \
    \
    src/todo/Foundation/NSDate.m \
    src/todo/Foundation/NSCalendar.m \
    src/todo/Foundation/NSDateFormatter.m \
    src/todo/Foundation/NSCalendarDate.m \
    src/todo/Foundation/date/NSDate_timeInterval.m \
    \
    src/todo/Foundation/NSTimeZone.m \
    src/todo/Foundation/timezone/NSTimeZone_absolute.m \
    src/todo/Foundation/timezone/NSTimeZone_concrete.m \
    src/todo/Foundation/timezone/NSTimeZoneTransition.m \
    src/todo/Foundation/timezone/NSTimeZoneType.m \
    \
    src/todo/Foundation/NSTimer.m \
    src/todo/Foundation/timer/NSTimer_concrete.m \
    src/todo/Foundation/timer/NSTimer_invocation.m \
    src/todo/Foundation/timer/NSTimer_targetAction.m \
    \
    src/todo/Foundation/NSPropertyList.m \
    src/todo/Foundation/propertylist/NSOldXMLAttribute.m \
    src/todo/Foundation/propertylist/NSOldXMLDocument.m \
    src/todo/Foundation/propertylist/NSOldXMLElement.m \
    src/todo/Foundation/propertylist/NSOldXMLReader.m \
    src/todo/Foundation/propertylist/NSPropertyListReader.m \
    src/todo/Foundation/propertylist/NSPropertyListReader_binary1.m \
    src/todo/Foundation/propertylist/NSPropertyListReader_vintage.m \
    src/todo/Foundation/propertylist/NSPropertyListReader_xml1.m \
    src/todo/Foundation/propertylist/NSPropertyListWriter_vintage.m \
    src/todo/Foundation/propertylist/NSPropertyListWriter_xml1.m \
    \
    src/todo/Foundation/kvc/NSArray+KVC.m \
    src/todo/Foundation/kvc/NSDictionary+KVC.m \
    src/todo/Foundation/kvc/NSKVCMutableArray.m \
    src/todo/Foundation/NSKeyValueCoding.m \
    src/todo/Foundation/kvc/NSString+KVCAdditions.m \
    \
    src/todo/Foundation/NSCharacterSet.m \
    src/todo/Foundation/characterset/NSCharacterSet_bitmap.m \
    src/todo/Foundation/characterset/NSCharacterSet_range.m \
    src/todo/Foundation/characterset/NSCharacterSet_rangeInverted.m \
    src/todo/Foundation/characterset/NSCharacterSet_string.m \
    src/todo/Foundation/characterset/NSMutableCharacterSet_bitmap.m \
    \
    src/todo/Foundation/NSPredicate.m \
    src/todo/Foundation/NSComparisonPredicate.m \
    src/todo/Foundation/NSCompoundPredicate.m \
    src/todo/Foundation/NSExpression.m \
    src/todo/Foundation/predicate/NSExpression_array.m \
    src/todo/Foundation/predicate/NSExpression_assignment.m \
    src/todo/Foundation/predicate/NSExpression_constant.m \
    src/todo/Foundation/predicate/NSExpression_function.m \
    src/todo/Foundation/predicate/NSExpression_keypath.m \
    src/todo/Foundation/predicate/NSExpression_operator.m \
    src/todo/Foundation/predicate/NSExpression_self.m \
    src/todo/Foundation/predicate/NSExpression_variable.m \
    src/todo/Foundation/predicate/NSPredicate_BOOL.m \
    \
    src/todo/Foundation/NSStream.m \
    src/todo/Foundation/stream/NSInputStream_data.m \
    src/todo/Foundation/stream/NSInputStream_file.m \
    src/todo/Foundation/stream/NSInputStream_socket.m \
    src/todo/Foundation/stream/NSOutputStream_buffer.m \
    src/todo/Foundation/stream/NSOutputStream_data.m \
    src/todo/Foundation/stream/NSOutputStream_file.m \
    src/todo/Foundation/stream/NSOutputStream_socket.m \
    \
    src/todo/Foundation/NSFileHandle.m \
    src/todo/Foundation/filehandle/NSFileHandle_stream.m \
    \
    src/todo/Foundation/NSRaise.m \
    src/todo/Foundation/NSMethodSignature.m \
    src/todo/Foundation/NSInvocation.m \
    src/todo/Foundation/NSPlatform.m \
    src/todo/Foundation/NSObjCForward.m \
    \
    src/todo/Foundation/NSThread.m \
    src/todo/Foundation/NSSynchronization.m \
    src/todo/Foundation/NSLock.m \
    src/todo/Foundation/NSDelayedPerform.m \
    src/todo/Foundation/NSInputSource.m \
    src/todo/Foundation/NSInputSourceSet.m \
    src/todo/Foundation/NSOrderedPerform.m \
    src/todo/Foundation/NSRunLoop.m \
    src/todo/Foundation/NSRunLoopState.m \
    src/todo/Foundation/NSInlineSetTable.m \
    src/todo/Foundation/NSSelectInputSource.m \
    src/todo/Foundation/NSSelectInputSourceSet.m \
    src/todo/Foundation/NSSelectSet.m \
    src/todo/Foundation/NSSocket.m \
    src/todo/Foundation/NSKeyedArchiver.m \
    src/todo/Foundation/NSHashTable.m \
    \
    src/todo/Foundation/NSURL.m \
    src/todo/Foundation/url/NSCachedURLResponse.m \
    src/todo/Foundation/url/NSHTTPURLResponse.m \
    src/todo/Foundation/url/NSMutableURLRequest.m \
    src/todo/Foundation/url/NSURLAuthenticationChallenge.m \
    src/todo/Foundation/url/NSURLCache.m \
    src/todo/Foundation/url/NSURLConnection.m \
    src/todo/Foundation/url/NSURLConnectionState.m \
    src/todo/Foundation/url/NSURLCredential.m \
    src/todo/Foundation/url/NSURLCredentialStorage.m \
    src/todo/Foundation/url/NSURLDownload.m \
    src/todo/Foundation/url/NSURLError.m \
    src/todo/Foundation/url/NSURLHandle.m \
    src/todo/Foundation/url/NSURLProtectionSpace.m \
    src/todo/Foundation/url/NSURLProtocol.m \
    src/todo/Foundation/url/NSURLProtocol_http.m \
    src/todo/Foundation/url/NSURLRequest.m \
    src/todo/Foundation/url/NSURLResponse.m \
    \
    src/todo/Foundation/undomanager/NSUndoManager.m \
    src/todo/Foundation/undomanager/NSUndoGroup.m \
    \
    src/todo/Foundation/NSConcreteDirectoryEnumerator.m \
    src/todo/Foundation/NSFileManager.m \
    src/todo/Foundation/NSPathUtilities.m \
    src/todo/Foundation/NSBundle.m \
    src/todo/Foundation/NSIndexPath.m \
    src/todo/Foundation/NSIndexSet.m \
    src/todo/Foundation/NSHost.m \
 
MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES := macemu objc cf

include $(BUILD_SHARED_LIBRARY)


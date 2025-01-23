The solution involves correctly managing the lifecycle of the `myString` property.  If you are using ARC (Automatic Reference Counting - the modern approach), the `strong` keyword will automatically handle the retain/release cycle. However, if you are not using ARC, you must manually ensure that `myString` is properly retained and released:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    NSString *tempString = [[NSString alloc] initWithString:@
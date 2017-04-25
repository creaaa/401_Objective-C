
#import <Foundation/Foundation.h>

@interface Box : NSObject

// インスタンスプロパティ
@property float height; // 高さ
@property float width;  // 横幅
@property float length; // 縦幅


// メソッド
- (instancetype) generateBox:    (float) height withWidth: (float) width withLength: (float) length;
- (instancetype) initWithHeight: (float) height withWidth: (float) width WithLength: (float) length; // initializer


- (float) calc;

- (float) howManyTimes: (Box*) anotherBox;

@end

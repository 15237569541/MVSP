//
//  Color_Integrated.h
//  ZFHopesOne
//
//  Created by MacbookPro13 on 2017/7/14.
//  Copyright © 2017年 MacbookPro13. All rights reserved.
//


#ifndef Color_Integrated_h
#define Color_Integrated_h


#pragma mark --- 公用颜色宏

#define Main_Color Color_Hex(0x1f1f1f)

/**16进制颜色转UIColor  Color_Hex(0x000000)**/
#define Color_Hex(hexValue)   [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexValue & 0xFF)) / 255.0 alpha:1.0]

// RGB颜色
#define Color_RGBA(r,g,b,a)   [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define Color_RGB(r,g,b)      Color_RGBA(r,g,b,1.0f)
#define Color_Random Color_RGB(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

//window 暗黑透明色
#define AlertBgColor [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:0.3]
#define AlphaAlertBgColor(a) [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:a]

//对白色进行透明度的调整
#define AlphaWhiteColor(a)      [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:a]







#endif /* Color_Integrated.h */

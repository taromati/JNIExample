//
//  TMGrayFilter.hpp
//  
//
//  Created by rowena on 09/03/2017.
//
//

#ifndef TMGrayFilter_hpp
#define TMGrayFilter_hpp

#include <opencv2/core/core.hpp>

using namespace cv;

class TMGrayFilter {
public:
    TMGrayFilter();
    virtual ~TMGrayFilter();
    int toGray(Mat img, Mat& gray);
};

#endif /* TMGrayFilter_hpp */

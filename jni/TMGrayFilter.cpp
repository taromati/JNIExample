//
//  TMGrayFilter.cpp
//  
//
//  Created by rowena on 09/03/2017.
//
//

#include "TMGrayFilter.hpp"
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

SharedClass::SharedClass() {
    value = 0;
}

SharedClass::~SharedClass() {
    
}

int SharedClass::toGray(Mat img, Mat& gray)
{
    cvtColor(img, gray, CV_RGBA2GRAY);
    
    if (gray.rows == img.rows && gray.cols == img.cols)
    {
        return 1;
    }
    return 0;
}

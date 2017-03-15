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

TMGrayFilter::TMGrayFilter() {
    
}

TMGrayFilter::~TMGrayFilter() {
    
}

int TMGrayFilter::toGray(Mat img, Mat& gray)
{
    cvtColor(img, gray, CV_RGBA2GRAY);
    
    if (gray.rows == img.rows && gray.cols == img.cols)
    {
        return 1;
    }
    return 0;
}

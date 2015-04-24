#include <iostream>
#include <iomanip>
using namespace std;

#include <stdio.h>
#include <string.h>

#include <hls_opencv.h> // header file of OpenCV I/O
#include "pixel_op.h"

int main(int argc, char* argv[]) {
	// This Test Bench is not validated -_-

	IplImage* src = cvLoadImage("test_1080p.bmp");
	IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);

	AXI_STREAM src_axi, dst_axi;
	IplImage2AXIvideo(src, src_axi);
	pixelq_op(src_axi, dst_axi, src->height, src->width);
	AXIvideo2IplImage(dst_axi, dst);

	cvSaveImage("result_1080p.bmp", dst);
	cvReleaseImage(&src);
	cvReleaseImage(&dst);

	return (1);

}

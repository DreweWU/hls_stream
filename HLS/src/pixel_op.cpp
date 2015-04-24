#include "pixel_op.h"

void pixelq_op(AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows, int cols) {
	//Create AXI streaming interfaces for the core
#pragma HLS RESOURCE core=AXIS variable=src_axi metadata="-bus_bundle INPUT_STREAM"
#pragma HLS RESOURCE core=AXIS variable=dst_axi metadata="-bus_bundle OUTPUT_STREAM"
#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> img1, img2;

	const int k_dummy[3][3] = { { 0, 0, 0 }, //
			{ 0, 1, 0 }, //
			{ 0, 0, 0 }, //
			};

	hls::Window<3, 3, int> kernel;
	hls::Point_<int> anchor;

	for (int i = 0; i < 3; i++)
		for (int j = 0; j < 3; j++)
			kernel.val[i][j] = k_dummy[i][j];

	anchor.x = -1;
	anchor.y = -1;

#pragma HLS dataflow
	hls::AXIvideo2Mat(src_axi, img1);
	hls::Filter2D(img1, img2, kernel, anchor);
	hls::Mat2AXIvideo(img2, dst_axi);
}

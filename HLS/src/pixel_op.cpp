#include "pixel_op.h"

void pixelq_op(AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows, int cols) {
	//Create AXI streaming interfaces for the core
#pragma HLS RESOURCE core=AXIS variable=src_axi metadata="-bus_bundle INPUT_STREAM"
#pragma HLS RESOURCE core=AXIS variable=dst_axi metadata="-bus_bundle OUTPUT_STREAM"
#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> img;

#pragma HLS dataflow
	hls::AXIvideo2Mat(src_axi, img);
	hls::Mat2AXIvideo(img, dst_axi);
}

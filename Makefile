all: cnn_inference_f32 

cnn_inference_f32: cnn_inference_f32.cpp
	g++ cnn_inference_f32.cpp -o $@ -I./include -L. -ldnnl -Wl,-rpath=.

clean:
	@rm -f cnn_inference_f32

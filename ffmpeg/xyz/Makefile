extract-info:
	cp -v ../ffmpeg/build/libavfilter/libavfilter.a .
	cp -v ../ffmpeg/build/libavutil/libavutil.a .
	cp -v ../ffmpeg/build/libavdevice/libavdevice.a .
	cp -v ../ffmpeg/build/libavformat/libavformat.a .
	cp -v ../ffmpeg/build/libswscale/libswscale.a .
	cp -v ../ffmpeg/build/libavcodec/libavcodec.a .
	cp -v ../ffmpeg/build/libswresample/libswresample.a .
	gcc -std=c11 -c extract-info.c -I../ffmpeg
	# Get from Makefile log for my concrete macOS machine
	gcc -Llibavcodec -Llibavdevice -Llibavfilter -Llibavformat -Llibavresample -Llibavutil -Llibpostproc -Llibswscale -Llibswresample -Wl,-dynamic,-search_paths_first -Qunused-arguments -o extract-info extract-info.o -lavdevice -lavfilter -lavformat -lavcodec -lswresample -lswscale -lavutil  -framework Foundation -lm -framework AVFoundation -framework CoreVideo -framework CoreMedia -pthread -framework CoreGraphics -L/usr/local/lib -lSDL2 -framework OpenGL -framework OpenGL -pthread -lm -framework CoreImage -framework AppKit -lm -lbz2 -lz -Wl,-framework,CoreFoundation -Wl,-framework,Security -liconv -lm -llzma -lz -framework AudioToolbox -pthread -framework VideoToolbox -framework CoreFoundation -framework CoreMedia -framework CoreVideo -framework CoreServices -lm -lm -pthread -lm -framework VideoToolbox -framework CoreFoundation -framework CoreMedia -framework CoreVideo -framework CoreServices  -L/usr/local/lib -lSDL2


.PHONY: clean
clean:
	rm -vf extract-info extract-info.o

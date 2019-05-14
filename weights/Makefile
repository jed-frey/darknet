
yolov3.weights:
	./ipget --output yolov3.weights QmdZhErd8GpHCzecVLSVbNGLdESuLLn8tNeXoSrxXK8std

ipget: ipget.tar.gz
	tar --extract --gzip --strip-components=1 --file=${^}
	rm build-log

ipget.tar.gz:
	curl --location --output ${@} https://dist.ipfs.io/ipget/v0.3.1/ipget_v0.3.1_linux-amd64.tar.gz

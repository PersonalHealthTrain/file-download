.PHONY: all
all:
	for num in 0 1 2  ; do \
		docker build --no-cache --pull --rm --build-arg IRIS_FILE=iris$$num.csv -t personalhealthtrain/file-download-service-iris:$$num . ; \
    	done

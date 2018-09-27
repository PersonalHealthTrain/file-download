.PHONY: all
all:
	for num in 1 2 3  ; do \
		docker build --no-cache --pull --rm --build-arg IRIS_FILE=iris$$num.csv -t personalhealthtrain/file-download-service-iris:$$num . ; \
    	done

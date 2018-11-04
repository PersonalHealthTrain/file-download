# Build images for serving individual files
.PHONY: iris_individual
iris_individual:
	for num in 0 1 2  ; do \
		docker build -f Dockerfile_single --no-cache --pull --rm --build-arg FILE=files/iris$$num.csv -t personalhealthtrain/file-download-service:iris$$num . ; \
    	done

.PHONY: all_files
all_files:
	docker build -f Dockerfile_all --no-cache --pull --rm -t personalhealthtrain/file-download-service:all .

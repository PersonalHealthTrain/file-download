# Build images for serving individual files
.PHONY: iris_individual
iris_individual:
	for num in 0 1 2  ; do \
		docker build -f Dockerfile_single --no-cache --pull --rm --build-arg FILE=files/iris$$num.csv -t personalhealthtrain/file-download-service:iris$$num . ; \
    	done

.PHONY: all_files
all_files:
	docker build -f Dockerfile_all --no-cache --pull --rm -t personalhealthtrain/file-download-service:all .

default_files:
	docker build -f Dockerfile_default --build-arg FILE=iris0.csv --no-cache --pull --rm -t personalhealthtrain/file-download-service:iris0.csv .
	docker build -f Dockerfile_default --build-arg FILE=iris1.csv --no-cache --pull --rm -t personalhealthtrain/file-download-service:iris1.csv .
	docker build -f Dockerfile_default --build-arg FILE=iris2.csv --no-cache --pull --rm -t personalhealthtrain/file-download-service:iris2.csv .
	docker build -f Dockerfile_default --build-arg FILE=reut2-000.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-000.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-001.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-001.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-002.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-002.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-003.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-003.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-004.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-004.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-005.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-005.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-006.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-006.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-007.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-007.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-008.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-008.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-009.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-009.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-010.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-010.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-011.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-011.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-012.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-012.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-013.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-013.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-014.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-014.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-015.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-015.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-016.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-016.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-017.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-017.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-018.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-018.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-019.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-019.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-020.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-020.sgm .
	docker build -f Dockerfile_default --build-arg FILE=reut2-021.sgm --no-cache --pull --rm -t personalhealthtrain/file-download-service:reut2-021.sgm .


























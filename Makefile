BUILD_DIR := build

.PHONY: configure build clean

configure:
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake ..

build:
	cmake --build $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
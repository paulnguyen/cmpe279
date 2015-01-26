.PHONY: clean All

All:
	@echo ----------Building project:[ password - Release ]----------
	@cd "password" && "mingw32-make.exe"  -j 1 -f "password.mk"
clean:
	@echo ----------Cleaning project:[ password - Release ]----------
	@cd "password" && "mingw32-make.exe"  -j 1 -f "password.mk" clean

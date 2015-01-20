.PHONY: clean All

All:
	@echo ----------Building project:[ helloworldc - Debug ]----------
	@cd "helloworldc" && "$(MAKE)" -f "helloworldc.mk" 
clean:
	@echo ----------Cleaning project:[ helloworldc - Debug ]----------
	@cd "helloworldc" && "$(MAKE)" -f "helloworldc.mk" clean

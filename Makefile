FSC = fsharpc
SRC_DIR = src
MAIN_FILE = Main.fs

.PHONY: all
all: compile run

.PHONY: compile
compile:
	$(FSC) --out:$(SRC_DIR)/$(MAIN_FILE:.fs=.exe) $(SRC_DIR)/*.fs

.PHONY: run
run:
	mono $(SRC_DIR)/$(MAIN_FILE:.fs=.exe)

.PHONY: clean
clean:
	rm -f $(SRC_DIR)/*.exe
